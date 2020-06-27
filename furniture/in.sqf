_array = 
[["Land_Shoot_House_Wall_Stand_F",[2.50488,0.166016,-0.111023],[-0.999981,-0.00620458,0],[0,0,1]],["Land_WoodenTable_small_F",[1.27246,3.80469,-0.102829],[0.999946,-0.0104334,0],[0,0,1]],["Land_ChairWood_F",[0.00683594,3.8877,-0.101959],[-0.958951,0.283571,0],[0,0,1]],["Land_ChairWood_F",[2.64307,3.78809,-0.101868],[0.95067,0.310203,0],[0,0,1]],["Land_Magazine_rifle_F",[0.898438,4.06445,0.762604],[0.279185,-0.960238,0],[0,0,1]],["ACE_WaterBottle_Half_Item",[1.80518,4.04395,0.764465],[0.279185,-0.960238,0],[0,0,1]],["Land_BakedBeans_F",[0.943848,3.55664,0.761765],[0.279185,-0.960238,0],[0,0,1]],["Land_Wallet_01_F",[1.42676,4.11133,0.761871],[0.212996,-0.977053,0],[0,0,1]],["Land_Camping_Light_F",[1.24414,4.17773,0.765045],[0.279185,-0.960238,0],[0,0,1]],["Land_LuggageHeap_04_F",[4.82129,3.13965,-0.071701],[0.999996,0.00274158,0],[0,0,1]]]
;


_house = screenToWorld getMousePosition nearestObject "House_F";
{
  _x params ["_type", "_pos", "_dir", "_up"];
  _obj = create3DENEntity ["Object", _type, _house modelToWorld _pos];
  _obj setVectorDirAndUp [_house vectorModelToWorld _dir, _house vectorModelToWorld _up];
  _absPos = _house modelToWorld _pos;
  _objPos = (_absPos vectorDiff (_house vectorModelToWorld (_up vectorMultiply (vectorMagnitude (boundingCenter _obj)))));
  _objPos set [2, _absPos#2];
  _obj setPosATL _objPos;
} foreach _array;
