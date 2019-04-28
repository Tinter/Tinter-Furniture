#define SCAREDIST 20 
#define AGGRODIST 10 
#define LOOPFREQ 0.5 

_codeblock = {
  _count = count dogs_var_packArray;
  
  //Stop PFH if all packs are dead
  if (_count < 1) exitWith {
    player sideChat "removed PFH";
    dogs_var_running = false;
    dogs_var_i = 0;
    [_this#1] call cba_fnc_removePerFrameHandler;
  };
  _pack = dogs_var_packArray#dogs_var_i;
  
  
  for [{private _i = ((count _pack) - 1)}, {_i >= 0}, {_i = (_i - 1)}] do {
    _dog = _pack#_i;
    _target = _dog getVariable "dogs_var_target";
    if (!alive _dog) then {
      _pack deleteAt _i;
    } else {
      if (_dog getVariable "dogs_var_isAggro") then {
        [_dog, _target] call dogs_fnc_simAggro;
      } else {
        if (_dog getVariable "dogs_var_doAggro" && {!(_dog getVariable "dogs_var_isAggro")}) then {
          [_dog, _target, _pack] call dogs_fnc_simSwitch;
        } else {
          if (_dog distance _target < AGGRODIST) then {
              [_dog] call dogs_fnc_simAlerted;
          } else {
            if (_dog distance _target < SCAREDIST && _dog getVariable "dogs_var_canScare") then {
              [_dog, _target] call dogs_fnc_simWarning;
            };
          };
        };
      };
    };
  };
  
  //Delete pack if empty
  if ((count _pack) < 1) then {
    dogs_var_packArray deleteAt dogs_var_i;
  };
  
  //Iterate to next pack
  if (dogs_var_i == 0) then {
    dogs_var_i = ((count dogs_var_packArray) - 1) max 0;
  } else {
    dogs_var_i = dogs_var_i - 1;
  };
};
[_codeblock, LOOPFREQ] call cba_fnc_addPerFrameHandler;

