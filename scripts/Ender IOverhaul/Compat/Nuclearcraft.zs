#priority 100
#modloaded nuclearcraft

import crafttweaker.item.IItemStack;
import mods.nuclearcraft.alloy_furnace;

/* Removed */

val toRemove = [<enderio:item_alloy_ingot>, <enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:4>, <enderio:item_alloy_ingot:5>, <enderio:item_alloy_ingot:7>, <enderio:item_alloy_endergy_ingot:1>,
				<enderio:item_alloy_endergy_ingot:3>, <enderio:item_alloy_endergy_ingot:5>, <enderio:item_alloy_endergy_ingot:6>] as IItemStack[];
for i in toRemove {
	alloy_furnace.removeRecipeWithOutput([i]);
}
alloy_furnace.removeRecipeWithOutput([<enderio:item_alloy_ingot:9> * 3]);
alloy_furnace.removeRecipeWithOutput([<enderio:item_alloy_endergy_ingot:3> * 2]);

//-----------------------------------------------------------

/* Changed */

// Energetic Blend
recipes.remove(<nuclearcraft:compound:2>);
recipes.addShapeless(<nuclearcraft:compound:2> * 2,
	[<minecraft:blaze_powder>, <ore:dustGlowstone>]);
	
// Dimensional Blend
recipes.remove(<nuclearcraft:compound:8>);
recipes.addShapeless(<nuclearcraft:compound:8> * 2,
	[<ore:dustEndstone>, <minecraft:chorus_fruit_popped>]);
	
// Melodic Alloy
alloy_furnace.removeRecipeWithOutput([<enderio:item_alloy_endergy_ingot:2>]);
alloy_furnace.addRecipe([<ore:ingotElectricalSteel>, <minecraft:shulker_shell>, <enderio:item_alloy_endergy_ingot:2>, 100, 1.5]);

// Pulsating Crystal
alloy_furnace.removeRecipeWithOutput([<enderio:item_material:14>]);
alloy_furnace.addRecipe([<ore:gemDiamond>, <ore:nuggetEnderpearl> * 8, <enderio:item_material:14>, 100, 1.5]);