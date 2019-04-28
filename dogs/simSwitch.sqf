#define MOVEFREQ 0.5 
#define BITEDIST 1.5 
#define BITETIMEOUT 1.5 
#define DAM 0.3 
#define BITEFREQ 0.1 

params["_dog", "_target", "_pack"];

_dog playMove "Dog_Sprint";
[_dog, "dog_alert"] remoteExec ["say3D"];

_dog setVariable ["dogs_var_isAggro", true];
_dog setVariable ["dogs_var_aggroTime", time];
{_x setVariable ["dogs_var_doAggro", true]; _x setVariable ["dogs_var_target", _target];} foreach _pack;
[_dog getVariable "dogs_var_stepObj"] remoteExecCall ["dogs_fnc_addStepPFH", 0, true];

_dog setVariable [
  "dogs_var_movePFH",
  [{
    (_this#0) params ["_dog"];
    _target = _dog getVariable "dogs_var_target";
    _dog moveTo (getPos _target);
  }, MOVEFREQ, [_dog]] call cba_fnc_addPerFrameHandler
];

_dog setVariable [
  "dogs_var_bitePFH",
  [{
    (_this#0) params ["_dog"];
    _target = _dog getVariable "dogs_var_target";
    _biteTime = _dog getVariable "dogs_var_biteTime";
    if ((_dog getPos [1.5, getDir _dog]) distance _target < BITEDIST && {time > (_bitetime + BITETIMEOUT)}) then {
      [_target, DAM + random DAM, [
      "head", 0.05,
      "body", 0.15,
      "hand_l", 0.2,
      "hand_r", 0.2,
      "leg_l", 0.3,
      "leg_r", 0.3
      ] call BIS_fnc_selectRandomWeighted, "stab"] remoteExec ["ace_medical_fnc_addDamageToUnit", _target];
      _dog setDir ([_dog, _target] call bis_fnc_DirTo);
      [_dog, selectRandom ["bark1","bark2","bark3","bark4"]] remoteExec ["say3D"];
      _dog setVariable ["dogs_var_biteTime", time];
    };
  }, BITEFREQ, [_dog]] call cba_fnc_addPerFrameHandler
];
