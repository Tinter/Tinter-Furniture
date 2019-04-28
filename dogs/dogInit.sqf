dogs_var_packArray = [];
dogs_var_i = 0;
dogs_var_running = false;

// dogs_fnc_spawnPack = compile preprocessFileLineNumbers "dogs\dogPack.sqf"; 
dogs_fnc_spawnDog = compile preprocessFileLineNumbers "dogs\spawnDog.sqf"; 
dogs_fnc_addStepPFH = compileFinal preprocessFileLineNumbers "dogs\addStepPFH.sqf"; 
dogs_fnc_remStepPFH = compileFinal preprocessFileLineNumbers "dogs\remStepPFH.sqf"; 
dogs_fnc_simAggro = compile preprocessFileLineNumbers "dogs\simAggro.sqf"; 
dogs_fnc_simSwitch = compile preprocessFileLineNumbers "dogs\simSwitch.sqf"; 
dogs_fnc_simAlerted = compile preprocessFileLineNumbers "dogs\simAlerted.sqf"; 
dogs_fnc_simWarning = compile preprocessFileLineNumbers "dogs\simWarning.sqf"; 

publicVariable "dogs_fnc_addStepPFH";
publicVariable "dogs_fnc_remStepPFH";
