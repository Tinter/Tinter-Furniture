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
    _obj setPosWorld _pos;
    _obj enableSimulation false;
    _objects append [_obj];
  } forEach (_house getVariable "tint_house_composition");
} else {
  // _obj setObjectTexture [0, "#(argb,8,8,3)color(1,0.1,0.1,1.0,ca)"];
  private _class = [_house getVariable "tint_house_class"] call tint_fnc_translate;
  private _compositions = tint_compNamespace getVariable [_class, [[]]];
  
  private _compCount = count _compositions;
  private _index = 0;
  if (_compCount == 1) then {
    _index = 0;
  } else {
    _pos = getPos _house;
    _index = _house getVariable ["tint_house_index", -1];
    
    if (_index < 0) then {
      _index = (round((((_pos#1+_pos#2) * 10) + tint_seed) % _compCount) - 1) max 0;
    } else {
      _index = (_index % (_compCount - 1));
    };
    
  };
  //IMPORTANT, ARRAY IS A REFERENCE TYPE AAAAAAAAA
  private _composition = +(_compositions#_index);
  
  //Offset calculation
  _offset = tint_offsetNamespace getVariable [typeOf _house, [0,0,0]];
  if (!(_offset isEqualTo [0,0,0])) then {
    {
      _x#1 set [0, (_x#1#0) + (_offset#0)];
      _x#1 set [1, (_x#1#1) + (_offset#1)];
      _x#1 set [2, (_x#1#2) + (_offset#2)];
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
    
    _absPos = _house modelToWorldWorld _relPos;
    _obj setPosWorld _abspos;
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
