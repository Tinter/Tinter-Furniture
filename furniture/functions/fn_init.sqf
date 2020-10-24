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
tint_dressUpHouses = [];
tint_dressDownHouses = [];

#include "..\buildings.hpp";

//Sleep because scheduler? Makes furniture show up faster initially
//This sleep will stop missions on a dedicated server from loading, dunno why
if (!isMultiplayer) then {
  sleep 0.1;
};

//Building finding loop
tint_script_main = [_validBuildings] spawn {
  params ["_validBuildings"];

  while {tint_houses} do {
    private _pos = positionCameraToWorld [0,0,0];
    private _buildings = (_pos nearObjects ["House_F", tint_range]) select {!(isObjectHidden _x) && {!(_x getVariable ["tint_house_blacklisted", false])} && {alive _x}};

    //Remove all buildings not a child of the chosen classes
    {
      private _house = _x;
      private _index = _validBuildings findif {_house isKindOf _x};
      if (_index != -1) then {
        tint_activeHouses pushBackUnique _house;
        _house setVariable ["tint_house_class", _validBuildings#_index];
      };
    } forEach _buildings;
    //Sort list so that closest house is first
    tint_activeHouses = [tint_activeHouses, [_pos], {_input0 distance _x}, "ASCEND"] call BIS_fnc_sortBy;
    
    private _dressUpServer = [];
    private _dressDownServer = [];
    
    //Grab tint_houseLimit closest houses and check if they're within range
    private _outOfRange = 0;
    for "_i" from 0 to (tint_houseLimit-1 min (count tint_activeHouses - 1)) do {
      private _house = tint_activeHouses#_i;
      if (_pos distance _house <= tint_range) then {
        if !(_house getVariable ["tint_house_dressed", false]) then {
          tint_dressUpHouses pushBack _house;
          _dressUpServer pushBack _house;
        };
      } else { 
        //Keep track of how many of the houses are out of range
        _outOfRange = _outOfRange + 1;
      };
    };
    
    //Dress down the rest of the houses, but also the houses that are within the limit and out of range, based on above loop
    for "_i" from (count tint_activeHouses - 1) to ((tint_houseLimit - _outOfRange) min (count tint_activeHouses - _outOfRange)) step -1 do {
      private _house = tint_activeHouses deleteAt _i;
      if (_house getVariable ["tint_house_dressed", false]) then {
        tint_dressDownHouses pushBack _house;
        _dressDownServer pushBack _house;
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

    sleep tint_delay;
  };
};

//House dressing loop
tint_script_dresser = [] spawn {
  while {tint_houses} do {
    if (count tint_dressUpHouses > 0) then {
      [tint_dressUpHouses#0] call tint_fnc_dressUp;
      tint_dressUpHouses deleteAt 0;
    } else {
      if (count tint_dressDownHouses > 0) then {
        [tint_dressDownHouses#0] call tint_fnc_dressDown;
        tint_dressDownHouses deleteAt 0;
      }
    };
    
    //Let's the scheduler sleep, hopefully avoiding any lag spikes while not having a noticeable pause
    sleep 0.05;
  };
};
