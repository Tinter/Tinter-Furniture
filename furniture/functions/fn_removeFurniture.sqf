#define LIMIT 50
params["_obj"];
if (count tint_furnitureCache > LIMIT) then {
  tint_furnitureCache deleteAt 0;
};
_obj enableSimulation true;
tint_furnitureCache pushBack _obj;
_obj setPos [0,0,-5];
_obj enableSimulation false;
