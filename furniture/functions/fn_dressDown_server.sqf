params["_house"];

if (hasInterface) exitWith {};

private _lowestDistance = 9999;
private _dist = 0;
//Loop to check the distance of the closest player
{
  _dist = _x distance _house;
  
  if (_dist < _lowestDistance) then {
    _lowestDistance = _dist;
  };
} foreach (call cba_fnc_players);
//If there are still players in range,  then we still need the furniture
if (_lowestDistance < tint_range) exitWith {};

{
  deleteVehicle _x;
} foreach (_house getVariable ["tint_house_objects", []]);
_house setVariable ["tint_house_objects", nil];
_house setVariable ["tint_house_dressed", false];
