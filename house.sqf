#define RANGE 50

call compile preprocessFileLineNumbers "import.sqf";

tint_activeHouses = [];
_validBuildings = [
  "Land_Airport_Tower_F",
  "Land_Barn_01_brown_F",
  "Land_Barn_01_grey_F",
  "Land_Bunker_01_HQ_F",
  "Land_Bunker_01_big_F",
  "Land_Bunker_01_small_F",
  "Land_Bunker_01_tall_F",
  "Land_CarService_F",
  "Land_Chapel_Small_V1_F",
  "Land_Chapel_Small_V2_F",
  "Land_Chapel_V1_F",
  "Land_Chapel_V2_F",
  "Land_FuelStation_Build_F",
  "Land_Metal_Shed_F",
  "Land_Offices_01_V1_F",
  "Land_Shed_08_brown_F",
  "Land_Shed_08_grey_F",
  "Land_Slum_House01_F",
  "Land_Supermarket_01_malden_F",
  "Land_Unfinished_Building_01_F",
  "Land_Unfinished_Building_02_F",
  "Land_WIP_F",
  "Land_d_Addon_02_V1_F",
  "Land_d_House_Big_01_V1_F",
  "Land_d_House_Big_02_V1_F",
  "Land_d_House_Small_01_V1_F",
  "Land_d_House_Small_02_V1_F",
  "Land_d_Shop_01_V1_F",
  "Land_d_Shop_02_V1_F",
  "Land_d_Stone_HouseBig_V1_F",
  "Land_d_Stone_HouseSmall_V1_F",
  "Land_d_Stone_Shed_V1_F",
  "Land_i_Addon_02_b_white_F",
  "Land_i_Barracks_V1_F",
  "Land_i_Garage_V1_F",
  "Land_i_House_Small_03_V1_F",
  "Land_i_Shed_Ind_F",
  "Land_i_Shop_01_V1_F",
  "Land_i_Stone_HouseSmall_V1_F",
  "Land_u_Addon_02_V1_F",
  "i_House_Small_01_b_base_F",
  "Land_i_House_Small_01_V1_F",
  "i_House_Small_02_b_base_F",
  "i_House_Small_02_c_base_F",
  "Land_i_House_Small_02_V1_F",
  "i_House_Big_01_b_base_F",
  "Land_i_House_Big_01_V1_F",
  "i_House_Big_02_b_base_F",
  "Land_i_House_Big_02_V1_F",
  "i_Shop_02_b_base_F",
  "Land_i_Shop_02_V1_F",
  "i_Stone_House_Big_01_b_base_F",
  "Land_i_Stone_HouseBig_V1_F",
  "i_Stone_Shed_01_b_base_F",
  "Land_i_Stone_Shed_V1_F",
  "i_Stone_Shed_01_c_base_F"
];

tint_translationNamespace = [] call CBA_fnc_createNamespace;
tint_translationNamespace setVariable ["Land_i_House_Small_01_V1_F", "i_House_Small_01_b_base_F"];
// tint_translationNamespace setVariable ["Land_i_House_Small_02_V1_F", "i_House_Small_02_b_base_F"];
tint_translationNamespace setVariable ["i_House_Small_02_c_base_F", "i_House_Small_02_b_base_F"];
tint_translationNamespace setVariable ["Land_i_House_Big_01_V1_F", "i_House_Big_01_b_base_F"];
tint_translationNamespace setVariable ["Land_i_House_Big_02_V1_F", "i_House_Big_02_b_base_F"];
tint_translationNamespace setVariable ["Land_i_Shop_02_V1_F", "i_Shop_02_b_base_F"];
tint_translationNamespace setVariable ["Land_i_Stone_HouseBig_V1_F", "i_Stone_House_Big_01_b_base_F"];
// tint_translationNamespace setVariable ["Land_i_Stone_Shed_V1_F", "i_Stone_Shed_01_b_base_F"];
tint_translationNamespace setVariable ["i_Stone_Shed_01_c_base_F", "i_Stone_Shed_01_b_base_F"];

tint_fnc_translate = {
  params["_class"];
  
  _newClass = tint_translationNamespace getVariable [_class, ""];
  
  if (!(_newClass == "")) then {
    _class = _newClass;
  };
  
  _class
};

tint_fnc_dressDown = {
  params["_house"];
  
  _sphere = _house getVariable ["tint_houseobject", objNull];
  _objects = _house getVariable ["tint_house_objects", []];
  {
    deleteVehicle _x;
  }  foreach _objects;
  deleteVehicle _sphere;
  _house setVariable ["tint_houseobject", nil];
  _house setVariable ["tint_house_objects", nil];
  _house setVariable ["tint_house_ready", true];
};

tint_fnc_dressUp = {
  params["_house"];
  private _objects = [];
  private _lootSpots = [];

  private _obj = "Sign_Sphere200cm_F" createVehicleLocal [0,0,0];
  _obj setPos (_house modelToWorld [0,0,12]);
  _house setVariable ["tint_houseobject", _obj];
  
  //TODO: Synchronize over network
  //TODO: server/other clients
  //TODO: Spawn loot
  //TODO: Blacklist
  _composition = _house getVariable "tint_house_composition";
  
  if (isNil "_composition") then {
    _obj setObjectTexture [0, "#(argb,8,8,3)color(1,0.1,0.1,1.0,ca)"];
    _class = [_house getVariable "tint_house_class"] call tint_fnc_translate;
    _compositions = tint_compNamespace getVariable [_class, [[]]];
    
    _index = count _compositions;
    if (_index == 1) then {
      _index = 0;
    } else {
      _index = (round((((getPos _house)#1) * 10) % _index) - 1) max 0;
    };
    //IMPORTANT, ARRAY IS A REFERENCE TYPE AAAAAAAAA
    _composition = +(_compositions#_index);
    
    
    //Workaround for the stupid yellow shop house
    if (typeOf _house == "Land_i_Shop_01_V2_F") then {
      {
        _x#1 set [1, (_x#1#1)-0.34];
      } foreach _composition
    };
    
    
    for [{ private _i = count _composition - 1 }, { _i >= 0 }, { _i = _i - 1 }] do {
      _cur = _composition#_i;
      _cur params ["_type", "_relPos", "_relDir", "_relUp"];
      if (_type == "Sign_Arrow_Direction_Cyan_F") then {
        _lootSpots append [[_house modelToWorld _relPos, _house vectorModelToWorld _relDir, _house vectorModelToWorld _relUp]];
        _composition deleteAt _i;
      } else {
        private _obj = _type createVehicleLocal [0,0,0];
        
        _absDir = _house vectorModelToWorld _relDir;
        _absUp = _house vectorModelToWorld _relUp;
        _obj setVectorDirAndUp [_absDir, _absUp];
        _cur set [2, _absDir];
        _cur set [3, _absUp];
        
        _absPos = _house modelToWorld _relPos;
        _obj setPosATL _absPos;
        _cur set [1, _absPos];
        
        _obj enableSimulation false;
        _objects append [_obj];
      };
    };
 
    _house setVariable ["tint_house_composition", _composition];
    _house setVariable ["tint_house_lootSpots", _lootSpots];
    
    //TODO: Send out composition to the network
    
  } else {
    {
      _x params ["_type", "_pos", "_dir", "_up"];
      private _obj = _type createVehicleLocal [0,0,0];
      _obj setVectorDirAndUp [_dir, _up];
      _obj setPosATL _pos;
      _obj enableSimulation false;
      _objects append [_obj];
    } forEach _composition;
  };
  
  //Test loot code
  _spots = _house getVariable ["tint_house_lootSpots", []];
  if (count _spots > 0) then {
    _spot = selectRandom _spots;
    _loot = selectRandomWeighted ["ACE_fieldDressing", 2, "ACE_epinephrine", 0.5, "ACE_Flashlight_XL50", 0.2, "ACE_morphine", 1, "ACE_bloodIV_250", 0.1, "ACE_30Rnd_556x45_Stanag_Mk262_mag", 1, "10Rnd_9x21_Mag", 2, "HandGrenade", 0.5];
    _holder = "GroundWeaponHolder" createVehicle [0,0,0];
    _holder setVectorDirAndUp [_spot#1, _spot#2];
    _holder setPosATL _spot#0;
    _holder addItemCargoGlobal [_loot, 1];
    _holder addMagazineCargoGlobal [_loot, 1];
    _objects append [_holder];
  };
  
  _house addEventHandler ["killed", {params ["_house"];[_house] call tint_fnc_dressDown;}];
  _house setVariable ["tint_house_objects", _objects];
  _house setVariable ["tint_house_ready", false];
};

tint_houses = true;
while {tint_houses} do {
  private "_index";
  _buildings = player nearObjects ["House_F", RANGE];
  
  //Remove all buildings not a child of the chosen classes
  {
    private _building = _x;
    private _index = _validBuildings findif {_building isKindOf _x};
    if (_index != -1) then {
      tint_activeHouses pushBackUnique _building;
      _building setVariable ["tint_house_class", _validBuildings#_index];
    };
  } forEach _buildings;
  
  //Inverse loop through the houses, because we need to remove some
  for [{ private _i = count tint_activeHouses - 1 }, { _i >= 0 }, { _i = _i - 1 }] do {
    private _house = tint_activeHouses#_i;
    if ((player distance _house) > RANGE) then {
      [_house] call tint_fnc_dressDown; 
      tint_activeHouses deleteAt _i;
    } else {
      if (_house getVariable ["tint_house_ready", true]) then {
        [_house] call tint_fnc_dressUp;
      };
    };
  }; 
  
  sleep 10;
};