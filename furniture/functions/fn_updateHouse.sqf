params["_house", "_composition"];

if !(_house getVariable ["tint_house_initialized", false]) then {
  _house setVariable ["tint_house_composition", _composition];
  _house setVariable ["tint_house_initialized", true];
};