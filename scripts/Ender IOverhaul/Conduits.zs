#priority 100

import mods.jei.JEI;
import mods.enderio.SagMill;

/* Removed */

// Remote Awareness Upgrade
JEI.removeAndHide(<enderio:item_material:64>);

# Energy
// Stellar is re-added w/ different recipe
recipes.remove(<enderio:item_endergy_conduit:*>);
val conduitEndergy = <enderio:item_endergy_conduit>.definition;
for i in 0 to 11 {
	JEI.hide(conduitEndergy.makeStack(i));
}

//-----------------------------------------------------------

/* Changed */

# Item

// Item Conduit
recipes.remove(<enderio:item_item_conduit>);
recipes.addShaped("enderioverhaul_item_conduit", <enderio:item_item_conduit> * 8,
	[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
	 [<ore:nuggetEnderpearl>, <ore:ingotIron>, <ore:nuggetEnderpearl>],
	 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
SagMill.addRecipe([<minecraft:iron_nugget> * 6, <minecraft:iron_nugget> * 3, <enderio:item_material:28> * 2, <enderio:item_material:22> * 6], [1, 0.6, 0.4, 0.4], <enderio:item_item_conduit> * 8, "CHANCE_ONLY", 5600);

// Basic Item Filter
recipes.removeByRecipeName("enderio:filter_basic");
recipes.addShaped("enderioverhaul_basic_item_filter", <enderio:item_basic_item_filter>,
	[[null, <ore:paper>],
	 [<ore:paper>, <ore:chestWood>, <ore:paper>],
	 [null, <ore:paper>]]);

# Fluid

recipes.remove(<enderio:item_liquid_conduit:*>);

// Basic
recipes.addShaped("enderioverhaul_fluid_conduit", <enderio:item_liquid_conduit> * 8,
	[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
	 [<ore:ingotIron>, <ore:blockGlass>, <ore:ingotIron>],
	 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
SagMill.addRecipe([<minecraft:iron_nugget> * 12, <minecraft:iron_nugget> * 6, <minecraft:sand>, <enderio:item_material:22> * 6], [1, 0.6, 0.4, 0.4], <enderio:item_liquid_conduit> * 8, "CHANCE_ONLY", 5600);

// Pressurized
recipes.addShaped("enderioverhaul_pressurized_fluid_conduit", <enderio:item_liquid_conduit:1> * 8,
	[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
	 [<ore:ingotDarkSteel>, <ore:blockGlassHardened>, <ore:ingotDarkSteel>],
	 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
if(loadedMods has "appliedenergistics2") {
	SagMill.addRecipe([<enderio:item_alloy_nugget:6> * 12, <enderio:item_alloy_nugget:6> * 6, itemUtils.getItem("appliedenergistics2:material", 3) * 4, <enderio:item_material:22> * 6], [1, 0.6, 0.4, 0.4], <enderio:item_liquid_conduit:1>, "CHANCE_ONLY", 5600);
} else {
	SagMill.addRecipe([<enderio:item_alloy_nugget:6> * 12, <enderio:item_alloy_nugget:6> * 6, <enderio:item_material:33> * 4, <enderio:item_material:22> * 6], [1, 0.6, 0.4, 0.4], <enderio:item_liquid_conduit:1> * 8, "CHANCE_ONLY", 5600);
}

// Ender
recipes.addShaped("enderioverhaul_ender_fluid_conduit", <enderio:item_liquid_conduit:2> * 8,
	[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
	 [<ore:ingotEndSteel>, <ore:nuggetEnderpearl>, <ore:ingotEndSteel>],
	 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
SagMill.addRecipe([<enderio:item_alloy_nugget:8> * 12, <enderio:item_alloy_nugget:8> * 6, <enderio:item_material:28>, <enderio:item_material:22> * 6], [1, 0.6, 0.4, 0.4], <enderio:item_liquid_conduit:2> * 8, "CHANCE_ONLY", 5600);

# Energy

recipes.remove(<enderio:item_power_conduit:*>);

// Basic
recipes.addShaped("enderioverhaul_energy_conduit", <enderio:item_power_conduit> * 8,
	[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
	 [<ore:dustRedstone>, <ore:dustBedrock>, <ore:dustRedstone>],
	 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
SagMill.addRecipe([<minecraft:redstone>, <minecraft:redstone>, <enderio:item_material:22> * 6], [1, 0.6, 0.4], <enderio:item_power_conduit> * 8, "CHANCE_ONLY", 5600);

// Enhanced
recipes.addShaped("enderioverhaul_enhanced_energy_conduit", <enderio:item_power_conduit:1> * 8,
	[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
	 [<ore:ingotEnergeticAlloy>, <ore:dustBedrock>, <ore:ingotEnergeticAlloy>],
	 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
SagMill.addRecipe([<enderio:item_alloy_nugget:1> * 6, <enderio:item_alloy_nugget:1> * 6, <enderio:item_alloy_nugget:1> * 6, <enderio:item_material:22> * 6], [1, 0.6, 0.4, 0.4], <enderio:item_power_conduit:1> * 8, "CHANCE_ONLY", 5600);

// Ender
recipes.addShaped("enderioverhaul_ender_energy_conduit", <enderio:item_power_conduit:2> * 8,
	[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
	 [<ore:ingotVibrantAlloy>, <ore:dustBedrock>, <ore:ingotVibrantAlloy>],
	 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
SagMill.addRecipe([<enderio:item_alloy_nugget:2> * 6, <enderio:item_alloy_nugget:2> * 6, <enderio:item_alloy_nugget:2> * 6, <enderio:item_material:22> * 6], [1, 0.6, 0.4, 0.4], <enderio:item_power_conduit:2> * 8, "CHANCE_ONLY", 5600);

// Stellar
recipes.addShaped("enderioverhaul_stellar_energy_conduit", <enderio:item_endergy_conduit:11> * 8,
	[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
	 [<ore:ingotStellarAlloy>, <ore:dustBedrock>, <ore:ingotStellarAlloy>],
	 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
SagMill.addRecipe([<enderio:item_alloy_endergy_nugget:3> * 6, <enderio:item_alloy_endergy_nugget:3> * 6, <enderio:item_alloy_endergy_nugget:3> * 6, <enderio:item_material:22> * 6], [1, 0.6, 0.4, 0.4], <enderio:item_endergy_conduit:11> * 8, "CHANCE_ONLY", 5600);

# Redstone

recipes.remove(<enderio:item_redstone_conduit>);
recipes.addShaped("enderioverhaul_redstone_conduit", <enderio:item_redstone_conduit> * 8,
	[[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>],
	 [<ore:dustRedstone>, <ore:itemSilicon>, <ore:dustRedstone>],
	 [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);

if(loadedMods has "appliedenergistics2") {
	SagMill.addRecipe([<minecraft:redstone>, <minecraft:redstone>, itemUtils.getItem("appliedenergistics2:material", 5), <enderio:item_material:22> * 6], [1, 0.6, 0.4, 0.4], <enderio:item_redstone_conduit>, "CHANCE_ONLY", 5600);
} else {
	SagMill.addRecipe([<minecraft:redstone>, <minecraft:redstone>, <enderio:item_material:5>, <enderio:item_material:22> * 6], [1, 0.6, 0.4, 0.4], <enderio:item_redstone_conduit> * 8, "CHANCE_ONLY", 5600);
}