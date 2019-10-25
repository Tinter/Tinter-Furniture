params["_type"];
private _obj = objNull;
private _index = tint_furnitureCache findif {_x isKindOf _type};
if (_index != -1) then {
  _obj = tint_furnitureCache#_index;
  tint_furnitureCache deleteAt _index;
  _obj enableSimulation true;
} else {
  _obj = createSimpleObject [_type, [0,0,0], true];
};
_obj