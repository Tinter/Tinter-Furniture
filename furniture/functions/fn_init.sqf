#define RANGE 100

tint_range = RANGE;

// no HC or dedicated server allowed
if !(hasInterface) exitWith {
  ["tint_dressDownServer", {
    [{
      _this call tint_fnc_dressDown_server;
    }, _this] call CBA_fnc_execNextFrame;
  }] call CBA_fnc_addEventHandler;
  ["tint_dressUpServer", {
    [{
      _this call tint_fnc_dressUp_server;
    }, _this] call CBA_fnc_execNextFrame;
  }] call CBA_fnc_addEventHandler;
};

call compile preprocessFileLineNumbers "furniture\import.sqf";

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

[_validBuildings] spawn {
  params ["_validBuildings"];
  tint_houses = true;

  private _player = objNull;
  private _buildings = [];
  private _house = objNull;
  private _activeHouses = tint_activeHouses;
  private _index = 0;
  private _i = 0;
  while {tint_houses} do {
    _player = [] call CBA_fnc_currentUnit;
    _buildings = (_player nearObjects ["House_F", RANGE]) select {!(isObjectHidden _x)};

    //Remove all buildings not a child of the chosen classes
    {
      _house = _x;
      _index = _validBuildings findif {_house isKindOf _x};
      if (_index != -1) then {
        _activeHouses pushBackUnique _house;
        _house setVariable ["tint_house_class", _validBuildings#_index];
      };
    } forEach _buildings;

    //Inverse loop through the houses, because we need to remove some
    for [{ _i = count _activeHouses - 1 }, { _i >= 0 }, { _i = _i - 1 }] do {
      _house = _activeHouses#_i;
      if ((_player distance _house) > RANGE) then {
        if (isMultiplayer) then {
          //Tell server to delete
          ["tint_dressDownServer", [_house]] call CBA_fnc_globalEvent;
        };
        [_house] call tint_fnc_dressDown;
        _activeHouses deleteAt _i;
      } else {
        [_house] call tint_fnc_dressUp;
        if (isMultiplayer) then {
          //Spawn on the server to keep ai working
          ["tint_dressUpServer", [_house]] call CBA_fnc_globalEvent;
        };
      };
    };

    sleep 10;
  };
};