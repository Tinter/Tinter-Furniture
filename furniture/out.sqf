#include "buildings.hpp";

_house = screenToWorld getMousePosition nearestObject "House_F";
_objects = get3DENSelected "object";
_type = typeOf _house;
_objectArray = [];
private _index = _validBuildings findif {_house isKindOf _x};
if (_index != -1) then {
  _type = _validBuildings#_index;
};
_newClass = tint_translationNamespace getVariable [_type, ""];

if (!(_newClass == "")) then {
  _type = _newClass;
};

{
  _objectArray append [[]];
  _cur = _objectArray select ((count _objectArray)-1);
  _cur append [typeOf _x];
  //Position calculation uses getPosWorld as it's the most accurate
  _pos = getPosWorld _x;
  //Will need to be converted in case position is over water
  if (!(surfaceIsWater _pos)) then {
    _pos = ASLToATL _pos;
  };
  _relPos = _house worldToModel _pos;
  _relPos = _relPos vectorAdd (boundingCenter _house);
  _cur append [_relPos];
  _cur append  ([_x, _house] call BIS_fnc_vectorDirAndUpRelative);
} foreach _objects;
copyToClipboard str formatText ["_compositions = tint_compNamespace getVariable [""%1"", []];
_compositions append [%2];
tint_compNamespace setVariable [""%1"", _compositions];

", _type, _objectArray];
