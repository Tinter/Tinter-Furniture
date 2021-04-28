# Tinter-Furniture
Script to return the furniture from space.
Multiplayer compatible, with synchronized furniture spawning and despawning locally.
Requires CBA.
Please consider creating furniture compositions for this script.

Created by: Tinter
Scripting help by: Diwako, G4rrus, Nigel
Compositions by: Tinter, jonoPorter, Meanwhile(Nixie), lelop

To use: 
Merge the description.ext into your mission.
Note that current compositions are sadly limited by my creativity, I'm sorry.
Tweak the settings in Addon Options.

To create compositions:
Decorate whichever house you want in Eden. Drag to select them all, then while holding your cursor over the house run ``execVM "furniture\out.sqf"`` in the debug console.
  Tip: Put ``screenToWorld getMousePosition nearestObject "House_F"`` in the watch field of the debug console to see if you're looking at the right building.
Buildings with several compositions will select one randomly, while keeping it synchronized.
If you're decorating a building that has several variants and is not decorated by this script, you will have to find the classname of the type that all variants inherit from and add it to the _validBuildings array in buildings.hpp. If it is compatible (Double check for slight offsets or the like), but does not inherit, you can instead add it to the translation layer in buildings.hpp.
You can use the in.sqf script to put a loadout on a house in eden. To use, put the array into the in.sqf script, hold over the house you want to apply it to and run ``execVM "furniture\in.sqf"`` in the debug console.

Composition layout:
Compositions are just files with the output from out.sqf copy pasted inside them, these files are stored in "furniture/compositions".
Import.sqf is in charge of including these files, both to ensure the file doesn't get too large, but also to ensure commands happen in the right order.

Object variables:
tint_house_blacklisted - Set this to ´´true´´ to exclude it from being dressed up
tint_house_index - Set this to a nonnegative integer to force it to use a specific composition
