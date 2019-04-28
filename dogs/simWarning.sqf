#define SCARETIMEOUT 5 

params["_dog", "_target"];

_dog setVariable ["dogs_var_canScare", false];
_dog lookAt _target;
// _dog playMove "Dog_Idle_Stop";
[{[_this#0, selectRandom ["growl1","growl2","growl3"]] remoteExec ["say3D"]}, [_dog], 1] call cba_fnc_waitAndExecute;
// [{_dog = _this#0; if (!(_dog getVariable "dogs_var_isAggro")) then {_dog playMove "Dog_Idle_Stop"}; _dog setVariable ["dogs_var_canScare", true]}, [_dog], SCARETIMEOUT] call cba_fnc_waitAndExecute;
[{_this#0 setVariable ["dogs_var_canScare", true]}, [_dog], SCARETIMEOUT] call cba_fnc_waitAndExecute;
