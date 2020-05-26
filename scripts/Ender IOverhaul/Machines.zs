#priority 100

import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.enderio.AlloySmelter;
import mods.enderio.SliceNSplice;
import mods.enderio.SoulBinder;

/* Removed */

# Capacitors

val capacitorsToRemove = [<enderio:item_capacitor_grainy>, <enderio:item_capacitor_crystalline>, <enderio:item_capacitor_melodic>, <enderio:item_capacitor_stellar>,
				<enderio:item_capacitor_silver>, <enderio:item_capacitor_energetic_silver>, <enderio:item_capacitor_vivid>] as IItemStack[];
for i in capacitorsToRemove {
	JEI.removeAndHide(i);
}

# Simple Machines

val machinesToRemove = [<enderio:item_material>, <enderio:block_decoration3:1>, <enderio:block_decoration3:2>, <enderio:block_decoration3:4>, <enderio:block_simple_furnace>, <enderio:block_simple_alloy_smelter>,
				<enderio:block_simple_stirling_generator>, <enderio:block_simple_sag_mill>, <enderio:block_simple_wired_charger>, <enderio:block_simple_crafter>, <enderio:block_solar_panel>] as IItemStack[];
for i in machinesToRemove {
	JEI.removeAndHide(i);
}

//-----------------------------------------------------------

/* Changed */

# Capacitors

// Basic
recipes.remove(<enderio:item_basic_capacitor>);
recipes.addShapedMirrored("enderioverhaul_basic_capacitor", <enderio:item_basic_capacitor>,
	[[null, <ore:nuggetIron>, <ore:dustRedstone>],
	 [<ore:nuggetIron>, <ore:ingotGold>, <ore:nuggetIron>],
	 [<ore:dustBedrock>, <ore:nuggetIron>]]);

// Double-Layer
recipes.remove(<enderio:item_basic_capacitor:1>);
recipes.addShapedMirrored("enderioverhaul_double_layer_capacitor", <enderio:item_basic_capacitor:1>,
	[[null, <ore:nuggetDarkSteel>, <ore:itemVibrantCrystal>],
	 [<ore:nuggetDarkSteel>, <ore:ingotEnergeticAlloy>, <ore:nuggetDarkSteel>],
	 [<ore:dustBedrock>, <ore:nuggetDarkSteel>]]);
recipes.addShapedMirrored("enderioverhaul_double_layer_capacitor_upgrade", <enderio:item_basic_capacitor:1>,
	[[null, <ore:nuggetDarkSteel>, <ore:itemVibrantCrystal>],
	 [null, <ore:ingotEnergeticAlloy>, <ore:nuggetDarkSteel>],
	 [<enderio:item_basic_capacitor>]]);

// Octadic
recipes.remove(<enderio:item_basic_capacitor:2>);
recipes.addShapedMirrored("enderioverhaul_octadic_capacitor", <enderio:item_basic_capacitor:2>,
	[[null, <ore:nuggetEndSteel>, <ore:itemWeatherCrystal>],
	 [<ore:nuggetEndSteel>, <ore:ingotMelodicAlloy>, <ore:nuggetEndSteel>],
	 [<ore:dustBedrock>, <ore:nuggetEndSteel>]]);
recipes.addShapedMirrored("enderioverhaul_octadic_capacitor_upgrade", <enderio:item_basic_capacitor:2>,
	[[null, <ore:nuggetEndSteel>, <ore:itemWeatherCrystal>],
	 [null, <ore:ingotMelodicAlloy>, <ore:nuggetEndSteel>],
	 [<enderio:item_basic_capacitor:1>]]);

// Totemic
SliceNSplice.removeRecipe(<enderio:item_capacitor_totemic>);
SliceNSplice.addRecipe(<enderio:item_capacitor_totemic>, [<ore:ingotStellarAlloy>, <minecraft:totem_of_undying>, <ore:ingotStellarAlloy>, <ore:dustBedrock>, <enderio:item_basic_capacitor:2>, <ore:dustBedrock>], 20000);

# Basic Machines

// Industrial Dye Blend
recipes.remove(<enderio:item_material:51>);
recipes.addShapeless("enderioverhaul_industrial_dye_blend_egg", <enderio:item_material:51> * 3,
	[<ore:gemLapis>, <minecraft:dye>, <minecraft:dye:2>, <ore:egg>]);
recipes.addShapeless("enderioverhaul_industrial_dye_blend_slime", <enderio:item_material:51> * 6,
	[<ore:gemLapis>, <minecraft:dye>, <minecraft:dye:2>, <ore:slimeball>]);
	
// Industrial Machine Chassis
AlloySmelter.removeRecipe(<enderio:item_material:1>);
recipes.addShaped("enderioverhaul_industrial_machine_chassis", <enderio:item_material:1>,
	[[<ore:barsIron>, <ore:ingotIron>, <ore:barsIron>],
	 [<ore:ingotIron>, <ore:dyeMachine>, <ore:ingotIron>],
	 [<ore:barsIron>, <ore:ingotIron>, <ore:barsIron>]]);
	 
// Alloy Smelter
recipes.remove(<enderio:block_alloy_smelter>);
recipes.addShaped("enderioverhaul_alloy_smelter", <enderio:block_alloy_smelter>,
	[[<ore:ingotIron>, <minecraft:furnace>, <ore:ingotIron>],
	 [<minecraft:furnace>, <ore:itemMachineChassi>, <minecraft:furnace>],
	 [<ore:gearIronInfinity>, <minecraft:piston>, <ore:gearIronInfinity>]]);
	 
// Sag Mill
recipes.remove(<enderio:block_sag_mill>);
recipes.addShaped("enderioverhaul_sag_mill", <enderio:block_sag_mill>,
	[[<ore:ingotIron>, <ore:itemFlint>, <ore:ingotIron>],
	 [<ore:itemFlint>, <ore:itemMachineChassi>, <ore:itemFlint>],
	 [<ore:gearIronInfinity>, <minecraft:piston>, <ore:gearIronInfinity>]]);
	 
// The Vat
recipes.remove(<enderio:block_vat>);
recipes.addShaped("enderioverhaul_vat", <enderio:block_vat>,
	[[<ore:ingotElectricalSteel>, <minecraft:cauldron>, <ore:ingotElectricalSteel>],
	 [<enderio:block_tank>, <ore:itemMachineChassi>, <enderio:block_tank>],
	 [<ore:gearDark>, <minecraft:furnace>, <ore:gearDark>]]);
	 
// Painting Machine
<ore:sponge>.add(<minecraft:sponge>);
<ore:sponge>.add(<enderio:block_industrial_insulation>);
recipes.remove(<enderio:block_painter>);
recipes.addShaped("enderioverhaul_painting_machine", <enderio:block_painter>,
	[[<ore:ingotElectricalSteel>, <ore:sponge>, <ore:ingotElectricalSteel>],
	 [<ore:wool>, <ore:itemMachineChassi>, <ore:wool>],
	 [<ore:gearDark>, <minecraft:sticky_piston>, <ore:gearDark>]]);

// Wired Charger
recipes.remove(<enderio:block_wired_charger>);
recipes.addShaped("enderioverhaul_wired_charger", <enderio:block_wired_charger>,
	[[<ore:ingotElectricalSteel>, <ore:ingotGold>, <ore:ingotElectricalSteel>],
	 [<ore:dustBedrock>, <ore:itemMachineChassi>, <ore:dustBedrock>],
	 [<ore:gearDark>, <ore:ingotGold>, <ore:gearDark>]]);
	 
// The Niard
recipes.remove(<enderio:block_niard>);
recipes.addShaped("enderioverhaul_niard", <enderio:block_niard>,
	[[<ore:ingotElectricalSteel>, <enderio:block_tank>, <ore:ingotElectricalSteel>],
	 [<minecraft:bucket>, <ore:itemMachineChassi>, <minecraft:bucket>],
	 [<ore:gearDark>, <enderio:block_dark_iron_bars>, <ore:gearDark>]]);
	 
// Impulse Hopper
recipes.remove(<enderio:block_impulse_hopper>);
recipes.addShaped("enderioverhaul_impulse_hopper", <enderio:block_impulse_hopper>,
	[[<ore:ingotElectricalSteel>, <ore:blockHopper>, <ore:ingotElectricalSteel>],
	 [<ore:dustRedstone>, <ore:itemMachineChassi>, <ore:dustRedstone>],
	 [<ore:gearDark>, <ore:blockHopper>, <ore:gearDark>]]);

// Crafter
recipes.remove(<enderio:block_crafter>);
recipes.addShaped("enderioverhaul_crafter", <enderio:block_crafter>,
	[[<ore:ingotElectricalSteel>, <minecraft:piston>, <ore:ingotElectricalSteel>],
	 [<ore:itemSilicon>, <ore:itemMachineChassi>, <ore:itemSilicon>],
	 [<ore:gearDark>, <ore:workbench>, <ore:gearDark>]]);

# Soul Machines

// Soul Attuned Dye Blend
recipes.remove(<enderio:item_material:52>);
recipes.addShapeless("enderioverhaul_soul_attuned_dye_blend_magma_cream", <enderio:item_material:52> * 6,
	[<ore:dustSoularium>, <ore:dustNetherQuartz>, <ore:cropNetherWart>, <minecraft:magma_cream>]);

// Soulless Machine Chassis
recipes.remove(<enderio:item_material:55>);
recipes.addShaped("enderioverhaul_soulless_machine_chassis", <enderio:item_material:55>,
	[[<enderio:block_dark_iron_bars>, <ore:ingotDarkSteel>, <enderio:block_dark_iron_bars>],
	 [<ore:ingotDarkSteel>, <ore:dyeSoulMachine>, <ore:ingotDarkSteel>],
	 [<enderio:block_dark_iron_bars>, <ore:ingotDarkSteel>, <enderio:block_dark_iron_bars>]]);

// Soul Binder
recipes.remove(<enderio:block_soul_binder>);
recipes.addShaped("enderioverhaul_soul_binder", <enderio:block_soul_binder>,
	[[<ore:ingotSoularium>, <ore:itemGhastTear>, <ore:ingotSoularium>],
	 [<ore:itemSkull>, <ore:itemUnsouledMachineChassi>, <ore:itemSkull>],
	 [<ore:gearEnergized>, <ore:itemVibrantCrystal>, <ore:gearEnergized>]]);

// Soul Machine Chassis
AlloySmelter.removeRecipe(<enderio:item_material:53>);
SoulBinder.addRecipe(<enderio:item_material:53>, <enderio:item_material:55>, ["minecraft:villager"], 100000, 4);

// Slice'n'Splice
recipes.remove(<enderio:block_slice_and_splice>);
recipes.addShaped("enderioverhaul_slice_n_splice", <enderio:block_slice_and_splice>,
	[[<ore:ingotSoularium>, <ore:itemSkull>, <ore:ingotSoularium>],
	 [<ore:itemSilicon>, <ore:itemSoulMachineChassi>, <ore:itemSilicon>],
	 [<ore:gearEnergized>, <enderio:block_dark_iron_bars>, <ore:gearEnergized>]]);
	 
// Powered Spawner
recipes.remove(<enderio:block_powered_spawner>);
recipes.addShaped("enderioverhaul_powered_spawner", <enderio:block_powered_spawner>,
	[[<ore:ingotSoularium>, <ore:itemSkull>, <ore:ingotSoularium>],
	 [<ore:itemVibrantCrystal>, <ore:itemSoulMachineChassi>, <ore:itemVibrantCrystal>],
	 [<ore:gearEnergized>, <ore:skullZombieController>, <ore:gearEnergized>]]);
	 
// Farming Station
recipes.remove(<enderio:block_farm_station>);
recipes.addShaped("enderioverhaul_farming_station", <enderio:block_farm_station>,
	[[<ore:ingotSoularium>, <ore:itemPulsatingCrystal>, <ore:ingotSoularium>],
	 [<minecraft:dye:15>, <ore:itemSoulMachineChassi>, <minecraft:dye:15>],
	 [<ore:gearEnergized>, <ore:skullZombieController>, <ore:gearEnergized>]]);

// Killer Joe
recipes.remove(<enderio:block_killer_joe>);
recipes.addShaped("enderioverhaul_killer_joe", <enderio:block_killer_joe>,
	[[<ore:ingotEnergeticAlloy>, <ore:ingotDarkSteel>, <ore:ingotEnergeticAlloy>],
	 [<ore:blockGlassHardened>, <ore:skullZombieFrankenstein>, <ore:blockGlassHardened>],
	 [<ore:blockGlassHardened>, <enderio:block_tank:1>, <ore:blockGlassHardened>]]);

# Obelisks

// Enticing
recipes.remove(<enderio:block_attractor_obelisk>);
recipes.addShaped("enderioverhaul_attractor_obelisk", <enderio:block_attractor_obelisk>,
	[[null, <ore:gemEmerald>],
	 [<ore:ingotEnergeticAlloy>, <ore:gearIronInfinity>, <ore:ingotEnergeticAlloy>],
	 [<ore:ingotSoularium>, <ore:itemSoulMachineChassi>, <ore:ingotSoularium>]]);
	 
// Aversion
recipes.remove(<enderio:block_aversion_obelisk>);
recipes.addShaped("enderioverhaul_aversion_obelisk", <enderio:block_aversion_obelisk>,
	[[null, <ore:skullEnderResonator>],
	 [<ore:ingotEnergeticAlloy>, <minecraft:water_bucket>.transformReplace(<minecraft:bucket>), <ore:ingotEnergeticAlloy>],
	 [<ore:ingotSoularium>, <ore:itemSoulMachineChassi>, <ore:ingotSoularium>]]);
	 
// Inhibitor
recipes.remove(<enderio:block_inhibitor_obelisk>);
recipes.addShaped("enderioverhaul_inhibitor_obelisk", <enderio:block_inhibitor_obelisk>,
	[[null, <ore:itemEnderCrystal>],
	 [<ore:ingotEnergeticAlloy>, <ore:gearVibrant>, <ore:ingotEnergeticAlloy>],
	 [<ore:ingotSoularium>, <ore:itemSoulMachineChassi>, <ore:ingotSoularium>]]);
	 
// Relocator
recipes.remove(<enderio:block_relocator_obelisk>);
recipes.addShaped("enderioverhaul_relocator_obelisk", <enderio:block_relocator_obelisk>,
	[[null, <ore:blockPrismarine>],
	 [<ore:ingotMelodicAlloy>, <enderio:block_aversion_obelisk>, <ore:ingotMelodicAlloy>]]);
	 
// Weather
recipes.remove(<enderio:block_weather_obelisk>);
recipes.addShaped("enderioverhaul_weather_obelisk", <enderio:block_weather_obelisk>,
	[[null, <ore:itemWeatherCrystal>],
	 [<ore:ingotEnergeticAlloy>, <enderio:item_basic_capacitor:1>, <ore:ingotEnergeticAlloy>],
	 [<ore:ingotSoularium>, <ore:itemSoulMachineChassi>, <ore:ingotSoularium>]]);
	 
// Experience
recipes.remove(<enderio:item_xp_transfer>);
recipes.addShapedMirrored("enderioverhaul_experience_rod", <enderio:item_xp_transfer>,
	[[null, <ore:nuggetDarkSteel>, <ore:ingotVibrantAlloy>],
	 [<ore:nuggetDarkSteel>, <ore:itemVibrantCrystal>, <ore:nuggetDarkSteel>],
	 [<ore:ingotVibrantAlloy>, <ore:nuggetDarkSteel>]]);
recipes.remove(<enderio:block_experience_obelisk>);
recipes.addShaped("enderioverhaul_experience_obelisk", <enderio:block_experience_obelisk>,
	[[null, <enderio:item_xp_transfer>],
	 [<ore:ingotEnergeticAlloy>, <enderio:block_tank:1>, <ore:ingotEnergeticAlloy>],
	 [<ore:ingotSoularium>, <ore:itemSoulMachineChassi>, <ore:ingotSoularium>]]);

# Enhanced Machines

// Enhanced Dye Blend
recipes.remove(<enderio:item_material:67>);
recipes.addShapeless("enderioverhaul_enhanced_dye_blend_eye_of_ender", <enderio:item_material:67> * 6,
	[<ore:itemEnderCrystalPowder>, <minecraft:dragon_breath>, <ore:dustPrismarine>, <ore:pearlEnderEye>]);

// Enhanced Machine Chassis
AlloySmelter.removeRecipe(<enderio:item_material:54>);
recipes.addShaped("enderioverhaul_enhanced_machine_chassis", <enderio:item_material:54>,
	[[<enderio:block_end_iron_bars>, <ore:ingotEndSteel>, <enderio:block_end_iron_bars>],
	 [<ore:ingotEndSteel>, <ore:dyeEnhancedMachine>, <ore:ingotEndSteel>],
	 [<enderio:block_end_iron_bars>, <ore:ingotEndSteel>, <enderio:block_end_iron_bars>]]);

// Alloy Smelter
recipes.remove(<enderio:block_enhanced_alloy_smelter>);
recipes.addShaped("enderioverhaul_enhanced_alloy_smelter", <enderio:block_enhanced_alloy_smelter>,
	[[<ore:ingotMelodicAlloy>, <minecraft:furnace>, <ore:ingotMelodicAlloy>],
	 [<minecraft:furnace>, <ore:itemEnhancedMachineChassi>, <minecraft:furnace>],
	 [<ore:gearVibrant>, <minecraft:piston>, <ore:gearVibrant>]]);
recipes.addShaped("enderioverhaul_enhanced_alloy_smelter_upgrade", <enderio:block_enhanced_alloy_smelter>,
	[[<ore:ingotMelodicAlloy>, <ore:itemEnhancedMachineChassi>, <ore:ingotMelodicAlloy>],
	 [<ore:gearVibrant>, <enderio:block_alloy_smelter>.marked("basic_machine"), <ore:gearVibrant>]],
	function(outs, ins, cInfo) {
		return outs.withTag(ins.basic_machine.tag);
	}, null);

// SAG Mill
recipes.remove(<enderio:block_enhanced_sag_mill>);
recipes.addShaped("enderioverhaul_enhanced_sag_mill", <enderio:block_enhanced_sag_mill>,
	[[<ore:ingotMelodicAlloy>, <ore:itemFlint>, <ore:ingotMelodicAlloy>],
	 [<ore:itemFlint>, <ore:itemEnhancedMachineChassi>, <ore:itemFlint>],
	 [<ore:gearVibrant>, <minecraft:piston>, <ore:gearVibrant>]]);
recipes.addShaped("enderioverhaul_enhanced_sag_mill_upgrade", <enderio:block_enhanced_sag_mill>,
	[[<ore:ingotMelodicAlloy>, <ore:itemEnhancedMachineChassi>, <ore:ingotMelodicAlloy>],
	 [<ore:gearVibrant>, <enderio:block_sag_mill>.marked("basic_machine"), <ore:gearVibrant>]],
	function(outs, ins, cInfo) {
		return outs.withTag(ins.basic_machine.tag);
	}, null);
	
// The Enhanced Vat
recipes.remove(<enderio:block_enhanced_vat>);
recipes.addShaped("enderioverhaul_enhanced_vat", <enderio:block_enhanced_vat>,
	[[<ore:ingotMelodicAlloy>, <minecraft:cauldron>, <ore:ingotMelodicAlloy>],
	 [<enderio:block_tank:1>, <ore:itemEnhancedMachineChassi>, <enderio:block_tank:1>],
	 [<ore:gearVibrant>, <minecraft:furnace>, <ore:gearVibrant>]]);
recipes.addShaped("enderioverhaul_enhanced_vat_upgrade", <enderio:block_enhanced_vat>,
	[[<ore:ingotMelodicAlloy>, <ore:itemEnhancedMachineChassi>, <ore:ingotMelodicAlloy>],
	 [<ore:gearVibrant>, <enderio:block_vat>.marked("basic_machine"), <ore:gearVibrant>]],
	function(outs, ins, cInfo) {
		return outs.withTag(ins.basic_machine.tag);
	}, null);

// Enhanced Wired Charger
recipes.remove(<enderio:block_enhanced_wired_charger>);
recipes.addShaped("enderioverhaul_enhanced_wired_charger", <enderio:block_enhanced_wired_charger>,
	[[<ore:ingotMelodicAlloy>, <ore:ingotGold>, <ore:ingotMelodicAlloy>],
	 [<ore:dustBedrock>, <ore:itemEnhancedMachineChassi>, <ore:dustBedrock>],
	 [<ore:gearVibrant>, <ore:ingotGold>, <ore:gearVibrant>]]);
recipes.addShaped("enderioverhaul_enhanced_wired_charger_upgrade", <enderio:block_enhanced_wired_charger>,
	[[<ore:ingotMelodicAlloy>, <ore:itemEnhancedMachineChassi>, <ore:ingotMelodicAlloy>],
	 [<ore:gearVibrant>, <enderio:block_wired_charger>.marked("basic_machine"), <ore:gearVibrant>]],
	function(outs, ins, cInfo) {
		return outs.withTag(ins.basic_machine.tag);
	}, null);

# Misc

// Wireless Charging Antenna
recipes.remove(<enderio:block_normal_wireless_charger>);
recipes.addShaped("enderioverhaul_wireless_charging_antenna", <enderio:block_normal_wireless_charger>,
	[[null, <ore:skullEnderResonator>],
	 [<ore:ingotElectricalSteel>, <ore:itemMachineChassi>, <ore:ingotElectricalSteel>],
	 [null, <enderio:item_basic_capacitor:1>]]);

// Enhanced Wireless Charging Antenna
recipes.remove(<enderio:block_enhanced_wireless_charger>);
recipes.addShaped("enderioverhaul_enhanced_wireless_charging_antenna", <enderio:block_enhanced_wireless_charger>,
	[[null, <ore:skullEnderResonator>],
	 [<ore:ingotMelodicAlloy>, <ore:itemEnhancedMachineChassi>, <ore:ingotMelodicAlloy>],
	 [null, <enderio:item_basic_capacitor:2>]]);
recipes.addShaped("enderioverhaul_enhanced_wireless_charging_antenna_upgrade", <enderio:block_enhanced_wireless_charger>,
	[[null, <enderio:block_normal_wireless_charger>],
	 [<ore:ingotMelodicAlloy>, <ore:itemEnhancedMachineChassi>, <ore:ingotMelodicAlloy>],
	 [null, <enderio:item_basic_capacitor:2>]]);
	 
// Wireless Charging Antenna Extension
recipes.remove(<enderio:block_wireless_charger_extension>);
recipes.addShapedMirrored("enderioverhaul_wireless_charging_antenna_extension", <enderio:block_wireless_charger_extension>,
	[[<ore:nuggetEndSteel>, <ore:ingotEndSteel>],
	 [null, <ore:nuggetEndSteel>, <ore:ingotMelodicAlloy>],
	 [<ore:nuggetEndSteel>, <ore:ingotEndSteel>]]);

// Wireless Charger
recipes.remove(<enderio:block_wireless_charger>);
recipes.addShapeless("enderioverhaul_wireless_charger", <enderio:block_wireless_charger>,
	[<enderio:item_conduit_facade>, <enderio:block_normal_wireless_charger>]);
	
// Dimensional Transciever
recipes.remove(<enderio:block_transceiver>);
recipes.addShaped("enderioverhaul_dimensional_transciever", <enderio:block_transceiver>,
	[[<ore:ingotMelodicAlloy>, <ore:skullSentientEnder>, <ore:ingotMelodicAlloy>],
	 [<ore:blockGlassHardened>, <ore:itemEnhancedMachineChassi>, <ore:blockGlassHardened>],
	 [<ore:ingotMelodicAlloy>, <ore:itemEnderCrystal>, <ore:ingotMelodicAlloy>]]);
	 
// Telepad
<enderio:block_tele_pad>.displayName = "Telepad";
recipes.remove(<enderio:block_tele_pad>);
recipes.addShapedMirrored("enderioverhaul_telepad", <enderio:block_tele_pad> * 9,
	[[<ore:ingotEndSteel>, <enderio:block_tank:1>, <ore:ingotEndSteel>],
	 [<ore:itemEnderCrystal>, <ore:itemEnhancedMachineChassi>, <ore:itemPrecientCrystal>],
	 [<ore:ingotEndSteel>, <enderio:item_basic_capacitor:2>, <ore:ingotEndSteel>]]);

// Dialing Device
recipes.remove(<enderio:block_dialing_device>);
recipes.addShaped("enderioverhaul", <enderio:block_dialing_device>,
	[[null, <ore:ingotElectricalSteel>],
	 [null, <ore:skullZombieController>],
	 [<ore:ingotEndSteel>, <enderio:item_basic_capacitor>, <ore:ingotEndSteel>]]);