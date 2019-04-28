params["_pos", "_n"]; //TODO: Make stricter

if (!isServer) exitWith {
  [_pos, _n] execVM "dogs\dogPack.sqf";
};

_players = [] call cba_fnc_players;
_players = [_players, [_pos], { _input0 distance _x}, "ASCEND"] call BIS_fnc_sortBy;



[[_pos, _n], "dogs\dogPack.sqf"] remoteExec ["execVM", _players#0];