params["_stepObj"];

_stepObj setVariable [
  "dogs_var_stepPFH",
  [{
    (_this#0#0) say3D selectRandom ["dog_step1","dog_step2","dog_step3","dog_step4","dog_step5","dog_step6","dog_step7","dog_step8"]; 
  }, 0.48, [_stepObj]] call cba_fnc_addPerFrameHandler
];