params["_house"];

if (hasInterface) exitWith {};

private _lowestDistance = 9999;
private _dist = 0;
{
  _dist = _x distance _house;
  
  if (_dist < _lowestDistance) then {
    _lowestDistance = _dist;
  };
} foreach (call cba_fnc_players);
if (_lowestDistance < tint_range) exitWith {};

// _sphere = _house getVariable ["tint_houseobject", objNull];
{
  deleteVehicle _x;
} foreach (_house getVariable ["tint_house_objects", []]);
// deleteVehicle _sphere;
// _house setVariable ["tint_houseobject", nil];
_house setVariable ["tint_house_objects", nil];
_house setVariable ["tint_house_dressed", false];
