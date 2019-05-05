# Tinter-Furniture
Script to return the furniture from space

Requires CBA.

Created by: Tinter

Scripting help by: Diwako, G4rrus

Compositions by: Tinter, jonoPorter, Meanwhile(Nixie)

To use: 

Merge the description.ext into your mission.

To create compositions:

Decorate whichever house you want in Eden. Drag to select them all, then while holding your cursor over the house run ``execVM "furniture/out.sqf"`` in the debug console.
Arrow(Direction, Cyan), classname "Sign_Arrow_Direction_Cyan_F", indicates position in your composition where loot can spawn.
  Tip: Put ``screenToWorld getMousePosition nearestObject "House_F"`` in the watch field of the debug console to see you're looking at the right building.
If you're decorating a building that has several variants and is not decorated by this script, you will have to find the classname of the type that all variants inherit from and add it to the _validBuildings array in both the init and out script.
You can use the in script to put a loadout on a house in eden. To use, put the array into the in script, hold over the house you want to apply it to and run ``execVM "furniture/in.sqf"`` in the debug console.
Beware that the orientation can reset when you manipulate objects imported like this.

Composition layout:

Compositions are just files with the output from out.sqf copy pasted inside them, these files are stored in "furniture/compositions".
Import.sqf will then include these files, both to ensure the file doesn't get too large, but also to ensure commands happen in the right order.
