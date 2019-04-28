#define ANIMSPEED 1.25 
#define DAMDENOM 10
#define HURTLIMIT 0.1
#define DELETETIME 60 
#define TARGETDIST 75 
#define TARGETFREQ 10

params["_pos"];
_dog = createAgent [selectRandom ["Fin_Random_F", "Alsatian_Random_F"], _pos, [], 0, "NONE"];

// _step = "O_TargetSoldier" createVehicle [0,0,0];
_step = "CBA_O_InvisibleTarget" createVehicle [0,0,0];
createVehicleCrew _step;
_step addRating (-10000);
_dog setVariable ["dogs_var_stepObj", _step];
// _step attachTo [_dog, [0,-0.3,0.7]];
_step attachTo [_dog, [0,0,0.7]];

_dog setDir (random 360);
_dog setAnimSpeedCoef ANIMSPEED;

_dog setVariable ["BIS_fnc_animalBehaviour_disable", true];
_dog setVariable ["dogs_var_aggroTime", 0];
_dog setVariable ["dogs_var_biteTime", time];
_dog setVariable ["dogs_var_doAggro", false];
_dog setVariable ["dogs_var_isAggro", false];
_dog setVariable ["dogs_var_canScare", true];
_dog setVariable ["dogs_var_target", objNull];

_dog addEventHandler["handleDamage", {
  params["_dog", "_selection", "_dam"];
  _damAfter = (_dam/DAMDENOM);
  _newdam = _damAfter+damage _dog;
  if (_damAfter >= HURTLIMIT) then {
    [_dog, selectRandom ["hurt1","hurt2","hurt3"]] remoteExec ["say3D"];
  };
  _newdam
}];

_dog addEventHandler["killed", {
  params["_dog"];
  _dog setVariable ["dogs_var_target", objNull];
  deleteVehicle (_dog getVariable "dogs_var_stepObj");
  [_dog getVariable "dogs_var_targetPFH"] call cba_fnc_removePerFrameHandler;
  player sideChat "removed target";
  [{deleteVehicle (_this#0)}, [_dog], DELETETIME] call cba_fnc_waitAndExecute;
}];

_dog addEventHandler ["Deleted", {
	params ["_dog"];
  [_dog getVariable "dogs_var_targetPFH"] call cba_fnc_removePerFrameHandler;
  [_dog getVariable "dogs_var_stepObj"] remoteExecCall ["dogs_fnc_remStepPFH", 0, true];
  [_dog getVariable "dogs_var_movePFH"] call cba_fnc_removePerFrameHandler;
  [_dog getVariable "dogs_var_bitePFH"] call cba_fnc_removePerFrameHandler;
  deleteVehicle (_dog getVariable "dogs_var_stepObj");
}];

_dog addEventHandler["firedNear", {
  params ["_dog", "_firer", "_distance", "_weapon", "_muzzle", "_mode", "_ammo", "_gunner"];
  if (!(_dog getVariable "dogs_var_doAggro")) then {
    _dog setVariable ["dogs_var_doAggro", true];
    _dog setVariable ["dogs_var_target", _firer];
  };
}];


_dog setVariable [
  "dogs_var_targetPFH", 
  [{
    _dog = _this#0#0;
    _list = _dog nearEntities ["CAManBase", TARGETDIST];
    _list = _list select {!(_x getVariable ["ACE_isUnconscious", false])};
    if (count _list >= 1) then {
      if (_dog getVariable "dogs_var_isAggro") then {
        _dog setVariable ["dogs_var_target", selectRandom _list];
      } else {
        _list = [_list, [_dog], { _input0 distance _x}, "ASCEND"] call BIS_fnc_sortBy;
        _dog setVariable ["dogs_var_target", _list#0];
      };
    } else {
      _dog setVariable ["dogs_var_target", objNull];
    };
  }, TARGETFREQ, [_dog]] call cba_fnc_addPerFrameHandler
];
_dog;
