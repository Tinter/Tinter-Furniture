params["_pos", "_n"]; //TODO: Make stricter

private _dogs = [];
if (isNil "dogs_var_running") then {
  call compile preprocessFileLineNumbers "dogs\dogInit.sqf";
};

for "_i" from 1 to _n do {
  _dog = [_pos] call dogs_fnc_spawnDog;
  _dogs pushBack _dog;
};

dogs_var_packArray pushBack _dogs;

if (!dogs_var_running) then {
  dogs_var_running = true;
  call compile preprocessFileLineNumbers "dogs\dogLogic.sqf";
};

