_validBuildings = [
  "Land_Airport_Tower_F",
  "Land_Barn_01_brown_F",
  "Land_Barn_01_grey_F",
  "Land_Bunker_01_HQ_F",
  "Land_Bunker_01_big_F",
  "Land_Bunker_01_small_F",
  "Land_Bunker_01_tall_F",
  "Land_CarService_F",
  "Land_Chapel_Small_V1_F",
  "Land_Chapel_Small_V2_F",
  "Land_Chapel_V1_F",
  "Land_Chapel_V2_F",
  "Land_FuelStation_Build_F",
  "Land_Metal_Shed_F",
  "Land_Offices_01_V1_F",
  "Land_Shed_08_brown_F",
  "Land_Shed_08_grey_F",
  "Land_Slum_House01_F",
  "Land_Supermarket_01_malden_F",
  "Land_Unfinished_Building_01_F",
  "Land_Unfinished_Building_02_F",
  "Land_WIP_F",
  "Land_d_Addon_02_V1_F",
  "Land_d_House_Big_01_V1_F",
  "Land_d_House_Big_02_V1_F",
  "Land_d_House_Small_01_V1_F",
  "Land_d_House_Small_02_V1_F",
  "Land_d_Shop_01_V1_F",
  "Land_d_Shop_02_V1_F",
  "Land_d_Stone_HouseBig_V1_F",
  "Land_d_Stone_HouseSmall_V1_F",
  "Land_d_Stone_Shed_V1_F",
  "Land_i_Addon_02_b_white_F",
  "Land_i_Barracks_V1_F",
  "Land_i_Garage_V1_F",
  "Land_i_House_Small_03_V1_F",
  "Land_i_Shed_Ind_F",
  "Land_i_Shop_01_V1_F",
  "Land_i_Stone_HouseSmall_V1_F",
  "Land_u_Addon_02_V1_F",
  "i_House_Small_01_b_base_F",
  "Land_i_House_Small_01_V1_F",
  "i_House_Small_02_b_base_F",
  "i_House_Small_02_c_base_F",
  "Land_i_House_Small_02_V1_F",
  "i_House_Big_01_b_base_F",
  "Land_i_House_Big_01_V1_F",
  "i_House_Big_02_b_base_F",
  "Land_i_House_Big_02_V1_F",
  "i_Shop_02_b_base_F",
  "Land_i_Shop_02_V1_F",
  "i_Stone_House_Big_01_b_base_F",
  "Land_i_Stone_HouseBig_V1_F",
  "i_Stone_Shed_01_b_base_F",
  "Land_i_Stone_Shed_V1_F",
  "i_Stone_Shed_01_c_base_F"
];
tint_translationNamespace = [] call CBA_fnc_createNamespace;
tint_translationNamespace setVariable ["Land_i_House_Small_01_V1_F", "i_House_Small_01_b_base_F"];
tint_translationNamespace setVariable ["i_House_Small_02_c_base_F", "i_House_Small_02_b_base_F"];
tint_translationNamespace setVariable ["Land_i_House_Big_01_V1_F", "i_House_Big_01_b_base_F"];
tint_translationNamespace setVariable ["Land_i_House_Big_02_V1_F", "i_House_Big_02_b_base_F"];
tint_translationNamespace setVariable ["Land_i_Shop_02_V1_F", "i_Shop_02_b_base_F"];
tint_translationNamespace setVariable ["Land_i_Stone_HouseBig_V1_F", "i_Stone_House_Big_01_b_base_F"];
tint_translationNamespace setVariable ["i_Stone_Shed_01_c_base_F", "i_Stone_Shed_01_b_base_F"];

_house = screenToWorld getMousePosition nearestObject "House_F";
_objects = get3DENSelected "object";
_type = typeOf _house;
_objectArray = [];
private _index = _validBuildings findif {_house isKindOf _x};
if (_index != -1) then {
  _type = _validBuildings#_index;
};
_newClass = tint_translationNamespace getVariable [_type, ""];

if (!(_newClass == "")) then {
  _type = _newClass;
};

{
  _objectArray append [[]];
  _cur = _objectArray select ((count _objectArray)-1);
  _cur append [typeOf _x];
  _cur append [_house worldToModel getPosATL _x];
  _cur append  ([_x, _house] call BIS_fnc_vectorDirAndUpRelative);
} foreach _objects;
copyToClipboard format ["_compositions = tint_compNamespace getVariable [""%1"", []];
_compositions append [%2];
tint_compNamespace setVariable [""%1"", _compositions];

", _type, _objectArray];
