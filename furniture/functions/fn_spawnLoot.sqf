params["_house"];

//Test loot code
_spots = _house getVariable ["tint_house_lootSpots", []];
_objects = _house getVariable ["tint_house_objects", []];
if (count _spots > 0) then {
  _spot = selectRandom _spots;
  _loot = selectRandomWeighted ["ACE_fieldDressing", 2, "ACE_epinephrine", 0.5, "ACE_Flashlight_XL50", 0.2, "ACE_morphine", 1, "ACE_bloodIV_250", 0.1, "ACE_30Rnd_556x45_Stanag_Mk262_mag", 1, "10Rnd_9x21_Mag", 2, "HandGrenade", 0.5, "arifle_SPAR_01_blk_F", 0.5];
  _holder = "GroundWeaponHolder" createVehicle [0,0,0];
  _holder setVectorDirAndUp [_spot#1, _spot#2];
  _holder setPosATL _spot#0;
  _holder addItemCargoGlobal [_loot, 1];
  _objects append [_holder];
};
_house setVariable ["tint_house_objects", _objects];
