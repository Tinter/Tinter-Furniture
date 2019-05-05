params["_house", "_composition", "_lootSpots"];
_isInitialized = _house getVariable ["tint_house_initialized", false];

if (!_isInitialized) then {
  _house setVariable ["tint_house_composition", _composition];
  _house setVariable ["tint_house_lootSpots", _lootSpots];
  _house setVariable ["tint_house_initialized", true];
};