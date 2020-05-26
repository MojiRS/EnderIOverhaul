#priority 100

import mods.jei.JEI;
import mods.enderio.AlloySmelter;

/* Changed */

// Power Buffer
recipes.remove(<enderio:block_buffer:1>);
recipes.addShaped("enderioverhaul_power_buffer", <enderio:block_buffer:1>,
	[[<ore:ingotIron>, <ore:ingotElectricalSteel>, <ore:ingotIron>],
	 [<ore:ingotElectricalSteel>, <enderio:item_power_conduit>, <ore:ingotElectricalSteel>],
	 [<ore:ingotIron>, <ore:ingotElectricalSteel>, <ore:ingotIron>]]);

# Capacitor Banks

// Basic
recipes.remove(<enderio:block_cap_bank:1>);
recipes.addShaped("enderioverhaul_basic_capacitor_bank", <enderio:block_cap_bank:1>,
	[[<ore:ingotIron>, <enderio:item_basic_capacitor>, <ore:ingotIron>],
	 [<enderio:item_basic_capacitor>, <ore:compressed1xDustBedrock>, <enderio:item_basic_capacitor>],
	 [<ore:ingotIron>, <enderio:item_basic_capacitor>, <ore:ingotIron>]]);

// Double-Layer
<enderio:block_cap_bank:2>.displayName = "Double-Layer Capacitor Bank";
recipes.remove(<enderio:block_cap_bank:2>);
recipes.addShaped("enderioverhaul_double_layer_capacitor_bank", <enderio:block_cap_bank:2>,
	[[<ore:ingotDarkSteel>, <enderio:item_basic_capacitor:1>, <ore:ingotDarkSteel>],
	 [<enderio:item_basic_capacitor:1>, <ore:compressed1xDustBedrock>, <enderio:item_basic_capacitor:1>],
	 [<ore:ingotDarkSteel>, <enderio:item_basic_capacitor:1>, <ore:ingotDarkSteel>]]);
recipes.addShaped("enderioverhaul_double_layer_capacitor_bank_upgrade", <enderio:block_cap_bank:2>,
	[[<ore:ingotDarkSteel>, <enderio:item_basic_capacitor:1>, <ore:ingotDarkSteel>],
	 [<enderio:item_basic_capacitor:1>, <enderio:block_cap_bank:1>.marked("capacitor_bank"), <enderio:item_basic_capacitor:1>],
	 [<ore:ingotDarkSteel>, <enderio:item_basic_capacitor:1>, <ore:ingotDarkSteel>]],
	function(out, ins, cInfo) {
		return out.withTag(ins.capacitor_bank.tag);
	}, null);

// Vibrant/Octadic
<enderio:block_cap_bank:3>.displayName = "Octadic Capacitor Bank";
recipes.remove(<enderio:block_cap_bank:3>);
recipes.addShaped("enderioverhaul_octadic_capacitor_bank", <enderio:block_cap_bank:3>,
	[[<ore:ingotEndSteel>, <enderio:item_basic_capacitor:2>, <ore:ingotEndSteel>],
	 [<enderio:item_basic_capacitor:2>, <ore:compressed1xDustBedrock>, <enderio:item_basic_capacitor:2>],
	 [<ore:ingotEndSteel>, <enderio:item_basic_capacitor:2>, <ore:ingotEndSteel>]]);
recipes.addShaped("enderioverhaul_octadic_capacitor_bank_upgrade", <enderio:block_cap_bank:3>,
	[[<ore:ingotEndSteel>, <enderio:item_basic_capacitor:2>, <ore:ingotEndSteel>],
	 [<enderio:item_basic_capacitor:2>, <enderio:block_cap_bank:2>.marked("capacitor_bank"), <enderio:item_basic_capacitor:2>],
	 [<ore:ingotEndSteel>, <enderio:item_basic_capacitor:2>, <ore:ingotEndSteel>]],
	function(out, ins, cInfo) {
		return out.withTag(ins.capacitor_bank.tag);
	}, null);
	 
# Inventory Chargers

// Basic
recipes.remove(<enderio:item_inventory_charger_basic>);
recipes.addShaped("enderioverhaul_basic_inventory_charger", <enderio:item_inventory_charger_basic>,
	[[null, <ore:itemPulsatingCrystal>],
	 [<ore:ingotElectricalSteel>, <enderio:block_cap_bank:1>, <ore:ingotElectricalSteel>],
	 [null, <ore:ingotElectricalSteel>]]);

// Double-Layer
<enderio:item_inventory_charger>.displayName = "Double-Layer Inventory Charger";
recipes.remove(<enderio:item_inventory_charger>);
recipes.addShaped("enderioverhaul_double_layer_inventory_charger", <enderio:item_inventory_charger>,
	[[null, <ore:skullEnderResonator>],
	 [<ore:ingotEnergeticAlloy>, <enderio:block_cap_bank:2>, <ore:ingotEnergeticAlloy>],
	 [null, <ore:ingotEnergeticAlloy>]]);
recipes.addShaped("enderioverhaul_double_layer_inventory_charger_upgrade", <enderio:item_inventory_charger>,
	[[null, <ore:skullEnderResonator>],
	 [<ore:ingotEnergeticAlloy>, <enderio:block_cap_bank:2>, <ore:ingotEnergeticAlloy>],
	 [null, <enderio:item_inventory_charger_basic>.marked("charger")]],
	function(out, ins, cInfo) {
		return out.withTag(ins.charger.tag);
	}, null);

// Vibrant/Octadic
<enderio:item_inventory_charger_vibrant>.displayName = "Octadic Inventory Charger";
recipes.remove(<enderio:item_inventory_charger_vibrant>);
recipes.remove(<enderio:item_inventory_charger>);
recipes.addShaped("enderioverhaul_octadic_inventory_charger", <enderio:item_inventory_charger_vibrant>,
	[[null, <ore:skullSentientEnder>],
	 [<ore:ingotMelodicAlloy>, <enderio:block_cap_bank:3>, <ore:ingotMelodicAlloy>],
	 [null, <ore:ingotMelodicAlloy>]]);
recipes.addShaped("enderioverhaul_octadic_inventory_charger_upgrade", <enderio:item_inventory_charger_vibrant>,
	[[null, <ore:skullSentientEnder>],
	 [<ore:ingotMelodicAlloy>, <enderio:block_cap_bank:3>, <ore:ingotMelodicAlloy>],
	 [null, <enderio:item_inventory_charger>.marked("charger")]],
	function(out, ins, cInfo) {
		return out.withTag(ins.charger.tag);
	}, null);

# Generators

// Name changes so they show up in JEI when you search 'generator'
<enderio:block_solar_panel:1>.displayName = "Photovoltaic Generator";
<enderio:block_solar_panel:2>.displayName = "Advanced Photovoltaic Generator";
<enderio:block_solar_panel:3>.displayName = "Enhanced Photovoltaic Generator";
<enderio:block_lava_generator>.displayName = "Lava Heat Generator";

// Photovoltaic Plate/Cell
<enderio:item_material:3>.displayName = "Photovoltaic Cell";
JEI.removeAndHide(<enderio:item_material:38>);
AlloySmelter.removeRecipe(<enderio:item_material:3>);
recipes.addShaped("enderioverhaul_photovoltaic_cell", <enderio:item_material:3>,
	[[<ore:dustLapis>, <ore:blockGlassHardened>, <ore:dustLapis>],
	 [<ore:itemSilicon>, <ore:itemSilicon>, <ore:itemSilicon>],
	 [<ore:nuggetElectricalSteel>, <ore:ingotElectricalSteel>, <ore:nuggetElectricalSteel>]]);

// Photovoltaic Cell/Generator
recipes.remove(<enderio:block_solar_panel:1>);
recipes.addShaped("enderioverhaul_photovoltaic_generator", <enderio:block_solar_panel:1>,
	[[<ore:itemPlatePhotovoltaic>, <ore:itemPlatePhotovoltaic>, <ore:itemPlatePhotovoltaic>],
	 [<ore:ingotEnergeticAlloy>, <enderio:item_basic_capacitor>, <ore:ingotEnergeticAlloy>]]);

// Advanced Photovoltaic Cell/Generator
recipes.remove(<enderio:block_solar_panel:2>);
recipes.addShaped("enderioverhaul_advanced_photovoltaic_generator", <enderio:block_solar_panel:2>,
	[[<ore:itemPlatePhotovoltaic>, <ore:itemPlatePhotovoltaic>, <ore:itemPlatePhotovoltaic>],
	 [<ore:ingotVibrantAlloy>, <enderio:item_basic_capacitor:1>, <ore:ingotVibrantAlloy>]]);
recipes.addShaped("enderioverhaul_advanced_photovoltaic_generator_upgrade", <enderio:block_solar_panel:2>,
	[[<ore:itemSilicon>, <enderio:block_solar_panel:1>, <ore:itemSilicon>],
	 [<ore:ingotVibrantAlloy>, <enderio:item_basic_capacitor:1>, <ore:ingotVibrantAlloy>]]);

// Vibrant Photovoltaic Cell/Enhanced Photovoltaic Generator
recipes.remove(<enderio:block_solar_panel:3>);
recipes.addShaped("enderioverhaul_enhanced_photovoltaic_generator", <enderio:block_solar_panel:3>,
	[[<ore:itemPlatePhotovoltaic>, <ore:itemPlatePhotovoltaic>, <ore:itemPlatePhotovoltaic>],
	 [<ore:ingotMelodicAlloy>, <enderio:item_basic_capacitor:2>, <ore:ingotMelodicAlloy>]]);
recipes.addShaped("enderioverhaul_enhanced_photovoltaic_generator_upgrade", <enderio:block_solar_panel:3>,
	[[<ore:itemSilicon>, <enderio:block_solar_panel:2>, <ore:itemSilicon>],
	 [<ore:ingotMelodicAlloy>, <enderio:item_basic_capacitor:2>, <ore:ingotMelodicAlloy>]]);
	 
// Stirling
recipes.remove(<enderio:block_stirling_generator>);
recipes.addShaped("enderioverhaul_stirling_generator", <enderio:block_stirling_generator>,
	[[<ore:ingotIron>, <minecraft:furnace>, <ore:ingotIron>],
	 [<ore:dustBedrock>, <ore:itemMachineChassi>, <ore:dustBedrock>],
	 [<ore:gearIronInfinity>, <minecraft:piston>, <ore:gearIronInfinity>]]);

// Combustion
recipes.remove(<enderio:block_combustion_generator>);
recipes.addShaped("enderioverhaul_combustion_generator", <enderio:block_combustion_generator>,
	[[<ore:ingotElectricalSteel>, <ore:ingotDarkSteel>, <ore:ingotElectricalSteel>],
	 [<enderio:block_tank>, <ore:itemMachineChassi>, <enderio:block_tank>],
	 [<ore:gearDark>, <minecraft:cauldron>, <ore:gearDark>]]);

// Enhanced Combustion
recipes.remove(<enderio:block_enhanced_combustion_generator>);
recipes.addShaped("enderioverhaul_enhanced_combustion_generator", <enderio:block_enhanced_combustion_generator>,
	[[<ore:ingotMelodicAlloy>, <ore:ingotEndSteel>, <ore:ingotMelodicAlloy>],
	 [<enderio:block_tank:1>, <ore:itemEnhancedMachineChassi>, <enderio:block_tank:1>],
	 [<ore:gearVibrant>, <minecraft:cauldron>, <ore:gearVibrant>]]);
recipes.addShaped("enderioverhaul_enhanced_combustion_generator_upgrade", <enderio:block_enhanced_combustion_generator>,
	[[<ore:ingotMelodicAlloy>, <ore:itemEnhancedMachineChassi>, <ore:ingotMelodicAlloy>],
	 [<ore:gearVibrant>, <enderio:block_combustion_generator>.marked("basic_generator"), <ore:gearVibrant>]],
	function(outs, ins, cInfo) {
		return outs.withTag(ins.basic_generator.tag);
	}, null);
	 
// Zombie
recipes.remove(<enderio:block_zombie_generator>);
recipes.addShaped("enderioverhaul_zombie_generator", <enderio:block_zombie_generator>,
	[[<ore:ingotElectricalSteel>, <ore:ingotDarkSteel>, <ore:ingotElectricalSteel>],
	 [<ore:blockGlass>, <minecraft:skull:2>, <ore:blockGlass>],
	 [<ore:blockGlass>, <enderio:block_tank>, <ore:blockGlass>]]);

// Frank'n'Zombie
recipes.remove(<enderio:block_franken_zombie_generator>);
recipes.addShaped("enderioverhaul_frank_n_zombie_generator", <enderio:block_franken_zombie_generator>,
	[[<ore:ingotEnergeticAlloy>, <ore:ingotSoularium>, <ore:ingotEnergeticAlloy>],
	 [<ore:blockGlassHardened>, <ore:skullZombieFrankenstein>, <ore:blockGlassHardened>],
	 [<ore:blockGlassHardened>, <enderio:block_tank:1>, <ore:blockGlassHardened>]]);	 
recipes.addShaped("enderioverhaul_frank_n_zombie_generator_upgrade", <enderio:block_franken_zombie_generator>,
	[[<ore:ingotEnergeticAlloy>, <enderio:block_zombie_generator>.marked("basic_generator"), <ore:ingotEnergeticAlloy>],
	 [<ore:blockGlassHardened>, <ore:skullZombieFrankenstein>, <ore:blockGlassHardened>]],
	function(outs, ins, cInfo) {
		return outs.withTag(ins.basic_generator.tag);
	}, null);

// Ender
recipes.remove(<enderio:block_ender_generator>);
recipes.addShaped("enderioverhaul_ender_generator", <enderio:block_ender_generator>,
	[[<ore:ingotMelodicAlloy>, <ore:ingotEndSteel>, <ore:ingotMelodicAlloy>],
	 [<ore:blockGlassHardened>, <ore:skullEnderResonator>, <ore:blockGlassHardened>],
	 [<ore:blockGlassHardened>, <enderio:block_tank:1>, <ore:blockGlassHardened>]]);

// Lava Heat Exchanger/Generator
recipes.remove(<enderio:block_lava_generator>);
recipes.addShaped("enderioverhaul_lava_heat_generator", <enderio:block_lava_generator>,
	[[<ore:ingotElectricalSteel>, <ore:ingotDarkSteel>, <ore:ingotElectricalSteel>],
	 [<minecraft:nether_brick>, <ore:itemMachineChassi>, <minecraft:nether_brick>],
	 [<ore:gearDark>, <enderio:block_tank>, <ore:gearDark>]]);