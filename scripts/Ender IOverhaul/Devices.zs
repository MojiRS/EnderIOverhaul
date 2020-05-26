#priority 100

/* Changed */

// Enchanter
recipes.remove(<enderio:block_enchanter>);
recipes.addShaped("enderioverhaul_enchanter", <enderio:block_enchanter>,
	[[null, <minecraft:book>],
	 [<ore:itemPrecientCrystal>, <ore:ingotDarkSteel>, <ore:itemPrecientCrystal>],
	 [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>]]);
	 
// Vacuum Chest
recipes.remove(<enderio:block_vacuum_chest>);
recipes.addShaped("enderioverhaul_vacuum_chest", <enderio:block_vacuum_chest>,
	[[<ore:ingotIron>, <ore:ingotElectricalSteel>, <ore:ingotIron>],
	 [<ore:ingotElectricalSteel>, <ore:chestWood>, <ore:ingotElectricalSteel>],
	 [<ore:ingotIron>, <ore:itemPulsatingCrystal>, <ore:ingotIron>]]);

// XP Vacuum
recipes.remove(<enderio:block_xp_vacuum>);
recipes.addShaped("enderioverhaul_xp_vacuum", <enderio:block_xp_vacuum>,
	[[<ore:ingotIron>, <ore:ingotElectricalSteel>, <ore:ingotIron>],
	 [<ore:ingotElectricalSteel>, <enderio:item_xp_transfer>, <ore:ingotElectricalSteel>],
	 [<ore:ingotIron>, <ore:itemPulsatingCrystal>, <ore:ingotIron>]]);
	 
// Travel Anchor
recipes.remove(<enderio:block_travel_anchor>);
recipes.addShaped("enderioverhaul_travel_anchor", <enderio:block_travel_anchor>,
	[[<ore:ingotDarkSteel>, <ore:blockGlass>, <ore:ingotDarkSteel>],
	 [<ore:blockGlass>, <ore:itemEnderCrystal>, <ore:blockGlass>],
	 [<ore:ingotDarkSteel>, <ore:blockGlass>, <ore:ingotDarkSteel>]]);
	 
// Block Detector

recipes.remove(<enderio:block_detector_block>);
recipes.remove(<enderio:block_detector_block_silent>);
recipes.addShaped("enderioverhaul_block_detector", <enderio:block_detector_block>,
	[[<ore:nuggetIron>, <enderio:block_painted_pressure_plate:8>, <ore:nuggetIron>],
	 [<ore:ingotIron>, <ore:craftingPiston>, <ore:ingotIron>],
	 [<ore:nuggetIron>, <ore:blockRedstone>, <ore:nuggetIron>]]);
recipes.addShaped("enderioverhaul_block_detector_silent", <enderio:block_detector_block_silent>,
	[[<ore:nuggetIron>, <enderio:block_painted_pressure_plate:9>, <ore:nuggetIron>],
	 [<ore:ingotIron>, <ore:craftingPiston>, <ore:ingotIron>],
	 [<ore:nuggetIron>, <ore:blockRedstone>, <ore:nuggetIron>]]);
	 
# Lights

// Light
recipes.removeByRecipeName("enderio:light_basic");
recipes.addShaped("enderioverhaul_light", <enderio:block_electric_light:2> * 4,
	[[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
	 [<ore:ingotIron>, <ore:glowstone>, <ore:ingotIron>]]);

// Electric Light
recipes.removeByRecipeName("enderio:light_electric");
recipes.addShaped("enderioverhaul_electric_light", <enderio:block_electric_light> * 4,
	[[<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>],
	 [<ore:itemSilicon>, <ore:glowstone>, <ore:itemSilicon>],
	 [<ore:itemSilicon>, <enderio:item_basic_capacitor>, <ore:itemSilicon>]]);

// Wireless Light
recipes.removeByRecipeName("enderio:light_wireless_upgrade");
recipes.removeByRecipeName("enderio:light_wireless_upgrade_inverted");
recipes.addShapeless("enderioverhaul_wireless_light", <enderio:block_electric_light:4> * 8,
	[<enderio:block_electric_light>, <enderio:block_electric_light>, <enderio:block_electric_light>, <enderio:block_electric_light>, <ore:skullEnderResonator>,
	 <enderio:block_electric_light>, <enderio:block_electric_light>, <enderio:block_electric_light>, <enderio:block_electric_light>]);
recipes.addShapeless("enderioverhaul_wireless_light_inverted", <enderio:block_electric_light:5> * 8,
	[<enderio:block_electric_light:1>, <enderio:block_electric_light:1>, <enderio:block_electric_light:1>, <enderio:block_electric_light:1>, <ore:skullEnderResonator>,
	 <enderio:block_electric_light:1>, <enderio:block_electric_light:1>, <enderio:block_electric_light:1>, <enderio:block_electric_light:1>]);