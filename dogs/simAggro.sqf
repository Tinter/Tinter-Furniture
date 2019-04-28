#define BOREDISTANCE 100 
#define BORETIME 10 

params["_dog", "_target"];

if ((_dog distance _target) > BOREDISTANCE && {time > ((_dog getVariable "dogs_var_aggroTime") + BORETIME)}) then {

  _dog setVariable ["dogs_var_doAggro", false];
  _dog setVariable ["dogs_var_isAggro", false];
  _dog playMove "Dog_Idle_Stop";
  [_dog getVariable "dogs_var_stepObj"] remoteExecCall ["dogs_fnc_remStepPFH", 0, true];
  [_dog getVariable "dogs_var_movePFH"] call cba_fnc_removePerFrameHandler;
  [_dog getVariable "dogs_var_bitePFH"] call cba_fnc_removePerFrameHandler;

};
