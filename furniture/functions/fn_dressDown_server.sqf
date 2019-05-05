params["_house"];

if (hasInterface) exitWith {};
_players = [] call cba_fnc_players;
_lowestDistance = 69;

{
  _dist = _x distance _house;
  
  if (_dist < _lowestDistance) then {
    _lowestDistance = _dist;
  };
} foreach _players;
if (_lowestDistance > 50) exitWith {};

// _sphere = _house getVariable ["tint_houseobject", objNull];
_objects = _house getVariable ["tint_house_objects", []];
{
  deleteVehicle _x;
}  foreach _objects;
// deleteVehicle _sphere;
// _house setVariable ["tint_houseobject", nil];
_house setVariable ["tint_house_objects", nil];
_house setVariable ["tint_house_dressed", false];