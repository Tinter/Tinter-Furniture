#define RANGE 100

tint_range = RANGE;

// no HC or dedicated server allowed
if !(hasInterface) exitWith {
  ["tint_dressDownServer", {
    [{
      _this call tint_fnc_dressDown_server;
    }, _this] call CBA_fnc_execNextFrame;
  }] call CBA_fnc_addEventHandler;
  ["tint_dressUpServer", {
    [{
      _this call tint_fnc_dressUp_server;
    }, _this] call CBA_fnc_execNextFrame;
  }] call CBA_fnc_addEventHandler;
};

call compile preprocessFileLineNumbers "furniture\import.sqf";

tint_activeHouses = [];

#include "..\buildings.hpp";

[_validBuildings] spawn {
  params ["_validBuildings"];
  tint_houses = true;

  private _player = objNull;
  private _buildings = [];
  private _house = objNull;
  private _activeHouses = tint_activeHouses;
  private _index = 0;
  private _i = 0;
  while {tint_houses} do {
    _player = [] call CBA_fnc_currentUnit;
    _buildings = (_player nearObjects ["House_F", RANGE]) select {!(isObjectHidden _x) && {!(_x getVariable ["tint_house_blacklisted", false])} && {alive _x}};

    //Remove all buildings not a child of the chosen classes
    {
      _house = _x;
      _index = _validBuildings findif {_house isKindOf _x};
      if (_index != -1) then {
        _activeHouses pushBackUnique _house;
        _house setVariable ["tint_house_class", _validBuildings#_index];
      };
    } forEach _buildings;

    //Inverse loop through the houses, because we need to remove some
    for [{ _i = count _activeHouses - 1 }, { _i >= 0 }, { _i = _i - 1 }] do {
      _house = _activeHouses#_i;
      if ((_player distance _house) > RANGE) then {
        if (isMultiplayer) then {
          //Tell server to delete
          ["tint_dressDownServer", [_house]] call CBA_fnc_globalEvent;
        };
        [_house] call tint_fnc_dressDown;
        _activeHouses deleteAt _i;
      } else {
        [_house] call tint_fnc_dressUp;
        if (isMultiplayer) then {
          //Spawn on the server to keep ai working
          ["tint_dressUpServer", [_house]] call CBA_fnc_globalEvent;
        };
      };
    };

    sleep 10;
  };
};