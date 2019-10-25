params["_house"];

// _sphere = _house getVariable ["tint_houseobject", objNull];
_objects = _house getVariable ["tint_house_objects", []];
{
  [_x] call tint_fnc_removeFurniture;
}  foreach _objects;
// deleteVehicle _sphere;
// _house setVariable ["tint_houseobject", nil];
_house setVariable ["tint_house_objects", nil];
_house setVariable ["tint_house_dressed", false];

_house removeEventHandler["Killed", _house getVariable ["tint_house_killedEH", -1]];
_house setVariable ["tint_house_killedEH", nil];
