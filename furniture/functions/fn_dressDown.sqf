params["_house"];

_objects = _house getVariable ["tint_house_objects", []];
{
  deleteVehicle _x;
}  foreach _objects;
_house setVariable ["tint_house_objects", nil];
_house setVariable ["tint_house_dressed", false];

_house removeEventHandler["Dammaged", _house getVariable ["tint_house_damagedEH", -1]];
_house setVariable ["tint_house_damagedEH", nil];

_house removeEventHandler["Killed", _house getVariable ["tint_house_killedEH", -1]];
_house setVariable ["tint_house_killedEH", nil];
