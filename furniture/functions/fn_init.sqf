#define RANGE 100
#define FREQUENCY 10

call compile preprocessFileLineNumbers "furniture\import.sqf";

// no HC or dedicated server allowed
if !(hasInterface) exitWith {
  ["tint_dressDownServer", {
    [{
      params ["_houses"];
      {
        [_x] call tint_fnc_dressDown_server;
      } forEach _houses;
    }, _this] call CBA_fnc_execNextFrame;
  }] call CBA_fnc_addEventHandler;
  ["tint_dressUpServer", {
    [{
      params ["_houses"];
      {
        [_x] call tint_fnc_dressUp_server;
      } forEach _houses;
    }, _this] call CBA_fnc_execNextFrame;
  }] call CBA_fnc_addEventHandler;
};

tint_activeHouses = [];

#include "..\buildings.hpp";

[_validBuildings] spawn {
  params ["_validBuildings"];
  tint_houses = true;

  private _pos = [];
  private _buildings = [];
  private _house = objNull;
  private _activeHouses = tint_activeHouses;
  private _index = 0;
  private _i = 0;
  private _dressUpServer = [];
  private _dressDownServer = [];
  while {tint_houses} do {
    _pos = positionCameraToWorld [0,0,0];
    _buildings = (_pos nearObjects ["House_F", RANGE]) select {!(isObjectHidden _x) && {!(_x getVariable ["tint_house_blacklisted", false])} && {alive _x}};

    //Remove all buildings not a child of the chosen classes
    {
      _house = _x;
      _index = _validBuildings findif {_house isKindOf _x};
      if (_index != -1) then {
        _activeHouses pushBackUnique _house;
        _house setVariable ["tint_house_class", _validBuildings#_index];
      };
    } forEach _buildings;

    _dressUpServer = [];
    _dressDownServer = [];

    //Inverse loop through the houses, because we need to remove some
    for [{ _i = count _activeHouses - 1 }, { _i >= 0 }, { _i = _i - 1 }] do {
      _house = _activeHouses#_i;
      if ((_pos distance _house) > RANGE) then {
        if (_house getVariable ["tint_house_dressed", false]) then {
          [_house] call tint_fnc_dressDown;
          _dressDownServer pushBack _house;
          _activeHouses deleteAt _i;
        };
      } else {
        if !(_house getVariable ["tint_house_dressed", false]) then {
          [_house] call tint_fnc_dressUp;
          _dressUpServer pushBack _house;
        };
      };
    };

    if (isMultiplayer) then {
      if (count _dressDownServer > 0) then {
        //Tell server to delete
        ["tint_dressDownServer", [_dressDownServer]] call CBA_fnc_globalEvent;
      };
      if (count _dressUpServer > 0) then {
        //Spawn on the server to keep ai working
        ["tint_dressUpServer", [_dressDownServer]] call CBA_fnc_globalEvent;
      };
    };

    sleep FREQUENCY;
  };
};