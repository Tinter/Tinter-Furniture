params["_house"];

_sphere = _house getVariable ["tint_houseobject", objNull];
_objects = _house getVariable ["tint_house_objects", []];
{
  deleteVehicle _x;
}  foreach _objects;
deleteVehicle _sphere;
_house setVariable ["tint_houseobject", nil];
_house setVariable ["tint_house_objects", nil];
_house setVariable ["tint_house_dressed", false];