_classname = "Land_i_House_Big_01_V3_F";
_composition = 
[["Land_TableSmall_01_F",[1.875,0.125,-2.39328],[0,1,0],[0,0,1]],["Land_ChairWood_F",[2.57413,-0.256348,-2.61066],[1,1.19249e-008,0],[0,0,1]],["Land_ChairWood_F",[1.07413,0.493652,-2.61657],[-0.5,0.866025,0],[0,0,1]],["Land_OfficeCabinet_02_F",[-1.375,-1.875,-1.83023],[-1,7.54979e-008,0],[0,0,1]],["Land_FlowerPot_01_Flower_F",[4.125,-6.625,-1.79351],[0.866025,-0.5,0],[0,0,1]],["Land_ArmChair_01_F",[-3.625,-6.25,1.29499],[0.707107,0.707107,0],[0,0,1]],["Land_TableSmall_01_F",[-1.875,-6.75,1.02595],[1,1.19249e-008,0],[0,0,1]],["Land_Rug_01_Traditional_F",[-2,-4.875,0.819308],[1,1.19249e-008,0],[0,0,1]],["OfficeTable_01_new_F",[0.5,-2.5,1.23452],[-3.17865e-008,-1,0],[0,0,1]],["Land_ChairWood_F",[1.07413,-1.88135,0.809937],[0.707107,0.707107,0],[0,0,1]],["Land_Basket_F",[2.5,0.75,1.14666],[0.707107,0.707107,0],[0,0,1]],["Land_WoodenBed_01_F",[1.875,4.375,1.2221],[-3.17865e-008,-1,0],[0,0,1]],["Land_ShelvesWooden_blue_F",[-3.125,3.5,1.30388],[1,1.19249e-008,0],[0,0,1]],["Land_LuggageHeap_01_F",[-3.625,6.625,-2.13282],[-0.866025,-0.5,0],[0,0,1]]]
;

_house = _classname createVehicle [0,0,0];
_offset = boundingCenter _house;
deleteVehicle _house;

{
  _obj = _x;
  _obj set [1, (_obj#1) vectorAdd _offset];
} foreach _composition;

copyToClipboard str _composition
