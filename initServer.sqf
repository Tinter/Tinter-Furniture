// call compile preprocessFileLineNumbers "dogs\dogInit.sqf";
setTimeMultiplier 30;
  light = "#lightpoint" createVehicleLocal [0,0,0];
  light setLightAmbient [0.2, 0.2, 0.2];
  light setLightColor [0, 0, 0];
  light setLightAttenuation [32000, 1, 1, 1];
  light setLightIntensity 40;