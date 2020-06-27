params["_house"];
private _objects = [];

//Blacklist check
if (_house getVariable ["tint_house_dressed", false] || {_house getVariable ["tint_house_blacklisted", false]} || {!(alive _house)}) exitWith {};
_house setVariable ["tint_house_dressed", true];

// private _obj = "Sign_Sphere200cm_F" createVehicleLocal [0,0,0];
// _obj setPos (_house modelToWorld [0,0,12]);
// _house setVariable ["tint_houseobject", _obj];

if (_house getVariable ["tint_house_initialized", false]) then {
  {
    _x params ["_type", "_pos", "_dir", "_up"];
    // private _obj = _type createVehicleLocal [0,0,0];
    private _obj = createSimpleObject [_type, [0,0,0], true];
    _obj setVectorDirAndUp [_dir, _up];
    _obj setPosATL _pos;
    _obj enableSimulation false;
    _objects append [_obj];
  } forEach (_house getVariable "tint_house_composition");
} else {
  // _obj setObjectTexture [0, "#(argb,8,8,3)color(1,0.1,0.1,1.0,ca)"];
  private _class = [_house getVariable "tint_house_class"] call tint_fnc_translate;
  private _compositions = tint_compNamespace getVariable [_class, [[]]];
  
  private _index = count _compositions;
  if (_index == 1) then {
    _index = 0;
  } else {
    _pos = getPos _house;
    _index = (round(((_pos#1+_pos#2) * 10) % _index) - 1) max 0;
  };
  //IMPORTANT, ARRAY IS A REFERENCE TYPE AAAAAAAAA
  private _composition = +(_compositions#_index);
  
  //Workaround for the stupid yellow shop house
  if (typeOf _house == "Land_i_Shop_01_V2_F") then {
    {
      _x#1 set [1, (_x#1#1)-0.34];
    } foreach _composition
  };
  
  for "_i" from (count _composition - 1) to 0 step -1 do {
    _cur = _composition#_i;
    _cur params ["_type", "_relPos", "_relDir", "_relUp"];
    private _obj = createSimpleObject [_type, [0,0,0], true];
    
    _absDir = _house vectorModelToWorld _relDir;
    _absUp = _house vectorModelToWorld _relUp;
    _obj setVectorDirAndUp [_absDir, _absUp];
    _cur set [2, _absDir];
    _cur set [3, _absUp];
    
    _absPos = _house modelToWorld _relPos;
    _objPos = (_absPos vectorDiff (_house vectorModelToWorld (_relUp vectorMultiply (vectorMagnitude (boundingCenter _obj)))));
    _objPos set [2, _absPos#2];
    _obj setPosATL _objPos;
    _cur set [1, _absPos];
    
    _obj enableSimulation false;
    _objects append [_obj];
  };
  
  //Send out calculations to other computers
  [_house, _composition] remoteExecCall ["tint_fnc_updateHouse", 0];
};


private _eh = _house addEventHandler ["killed", {params ["_house"];[_house] call tint_fnc_dressDown;}];
_house setVariable ["tint_house_killedEH", _eh];
_house setVariable ["tint_house_objects", _objects];
