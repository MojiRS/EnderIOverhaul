#priority 100

import crafttweaker.item.IItemStack;
import mods.jei.JEI;

/* Removed */

// Simple Inventory Charger
JEI.removeAndHide(<enderio:item_inventory_charger_simple>);

// Stellar gear
val toRemove = [<enderio:item_stellar_alloy_sword>, <enderio:item_stellar_alloy_pickaxe>, <enderio:item_stellar_alloy_axe>, <enderio:item_stellar_alloy_helmet>,
				<enderio:item_stellar_alloy_chestplate>, <enderio:item_stellar_alloy_leggings>, <enderio:item_stellar_alloy_boots>] as IItemStack[];
for i in toRemove {
	JEI.removeAndHide(i);
}

//-----------------------------------------------------------

/* Changed */

// Infinity/Stellar Rod
<enderio:item_material:71>.displayName = "Stellar Rod";
recipes.remove(<enderio:item_material:71>);
recipes.addShapedMirrored("enderioverhaul_stellar_rod", <enderio:item_material:71>,
	[[null, <ore:nuggetStellarAlloy>, <ore:dustBedrock>],
	 [<ore:nuggetStellarAlloy>, <ore:itemNutritiousStick>, <ore:nuggetStellarAlloy>],
	 [<ore:dustBedrock>, <ore:nuggetStellarAlloy>]]);
	 
// Electromagnet
recipes.remove(<enderio:item_magnet>);
recipes.addShaped("enderioverhaul_electromagnet", <enderio:item_magnet>,
	[[<ore:dyeRed>, <ore:itemVibrantCrystal>, <ore:dyeRed>],
	 [<ore:dustBedrock>, null, <ore:dustBedrock>],
	 [<ore:ingotElectricalSteel>, null, <ore:ingotElectricalSteel>]]);

# Dark gear

// Name changes to match standard equipment names
<enderio:item_dark_steel_helmet>.displayName = "Dark Helmet";
<enderio:item_dark_steel_chestplate>.displayName = "Dark Chestplate";
<enderio:item_dark_steel_pickaxe>.displayName = "Dark Pickaxe";
<enderio:item_dark_steel_sword>.displayName = "Dark Sword";
<enderio:item_dark_steel_sword>.addTooltip("The Ender");

// Helmet
recipes.remove(<enderio:item_dark_steel_helmet>);
recipes.addShaped("enderioverhaul_dark_helmet", <enderio:item_dark_steel_helmet>,
	[[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
	 [<ore:ingotDarkSteel>, <ore:skullGuardianDiode>, <ore:ingotDarkSteel>]]);

// Chestplate
recipes.remove(<enderio:item_dark_steel_chestplate>);
recipes.addShaped("enderioverhaul_dark_chestplate", <enderio:item_dark_steel_chestplate>,
	[[<ore:ingotDarkSteel>, <ore:skullGuardianDiode>, <ore:ingotDarkSteel>],
	 [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
	 [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>]]);

// Leggings
recipes.remove(<enderio:item_dark_steel_leggings>);
recipes.addShaped("enderioverhaul_dark_leggings", <enderio:item_dark_steel_leggings>,
	[[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
	 [<ore:ingotDarkSteel>, <ore:skullGuardianDiode>, <ore:ingotDarkSteel>],
	 [<ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>]]);

// Boots
recipes.remove(<enderio:item_dark_steel_boots>);
recipes.addShaped("enderioverhaul_dark_boots", <enderio:item_dark_steel_boots>,
	[[<ore:ingotDarkSteel>, <ore:skullGuardianDiode>, <ore:ingotDarkSteel>],
	 [<ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>]]);

// Shield
recipes.remove(<enderio:item_dark_steel_shield>);
recipes.addShaped("enderioverhaul_dark_shield", <enderio:item_dark_steel_shield>,
	[[<ore:ingotDarkSteel>, <ore:skullGuardianDiode>, <ore:ingotDarkSteel>],
	 [<ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>],
	 [null, <ore:ingotDarkSteel>]]);

// The Ender/Sword
recipes.remove(<enderio:item_dark_steel_sword>);
recipes.addShaped("enderioverhaul_dark_sword", <enderio:item_dark_steel_sword>,
	[[<ore:ingotDarkSteel>],
	 [<ore:skullSkeletalContractor>],
	 [<ore:itemNutritiousStick>]]);

// Pickaxe
recipes.remove(<enderio:item_dark_steel_pickaxe>);
recipes.addShaped("enderioverhaul_dark_pickaxe", <enderio:item_dark_steel_pickaxe>,
	[[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
	 [null, <ore:skullSkeletalContractor>],
	 [null, <ore:itemNutritiousStick>]]);

// Axe
recipes.remove(<enderio:item_dark_steel_axe>);
recipes.addShapedMirrored("enderioverhaul_dark_axe", <enderio:item_dark_steel_axe>,
	[[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
	 [<ore:ingotDarkSteel>, <ore:skullSkeletalContractor>],
	 [null, <ore:itemNutritiousStick>]]);

// Shears
recipes.remove(<enderio:item_dark_steel_shears>);
recipes.addShapedMirrored("enderioverhaul_dark_shears", <enderio:item_dark_steel_shears>,
	[[null, <ore:ingotDarkSteel>],
	 [<ore:ingotDarkSteel>, <ore:skullSkeletalContractor>]]);

// Crook
recipes.remove(<enderio:item_dark_steel_crook>);
recipes.addShapedMirrored("enderioverhaul_dark_crook", <enderio:item_dark_steel_crook>,
	[[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:skullSkeletalContractor>],
	 [null, null, <ore:itemNutritiousStick>],
	 [null, null, <ore:itemNutritiousStick>]]);

// Backhoe
recipes.remove(<enderio:item_dark_steel_hand>);
recipes.addShapedMirrored("enderioverhaul_dark_backhoe", <enderio:item_dark_steel_hand>,
	[[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
	 [null, <ore:skullSkeletalContractor>],
	 [null, <ore:itemNutritiousStick>]]);
	 
# Ender gear

// Name changes to match standard equipment names
<enderio:item_end_steel_helmet>.displayName = "Ender Helmet";
<enderio:item_end_steel_chestplate>.displayName = "Ender Chestplate";
<enderio:item_end_steel_pickaxe>.displayName = "Ender Pickaxe";
<enderio:item_end_steel_sword>.displayName = "Ender Sword";
<enderio:item_end_steel_sword>.addTooltip("The Ender Mk2");

// Helmet
recipes.remove(<enderio:item_end_steel_helmet>);
recipes.addShaped("enderioverhaul_ender_helmet", <enderio:item_end_steel_helmet>,
	[[<ore:ingotStellarAlloy>, <ore:ingotEndSteel>, <ore:ingotStellarAlloy>],
	 [<ore:ingotEndSteel>, <ore:skullSentientEnder>, <ore:ingotEndSteel>]]);

// Chestplate
recipes.remove(<enderio:item_end_steel_chestplate>);
recipes.addShaped("enderioverhaul_ender_chestplate", <enderio:item_end_steel_chestplate>,
	[[<ore:ingotEndSteel>, <ore:skullSentientEnder>, <ore:ingotEndSteel>],
	 [<ore:ingotStellarAlloy>, <ore:ingotEndSteel>, <ore:ingotStellarAlloy>],
	 [<ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>]]);

// Leggings
recipes.remove(<enderio:item_end_steel_leggings>);
recipes.addShaped("enderioverhaul_ender_leggings", <enderio:item_end_steel_leggings>,
	[[<ore:ingotStellarAlloy>, <ore:ingotEndSteel>, <ore:ingotStellarAlloy>],
	 [<ore:ingotEndSteel>, <ore:skullSentientEnder>, <ore:ingotEndSteel>],
	 [<ore:ingotEndSteel>, null, <ore:ingotEndSteel>]]);

// Boots
recipes.remove(<enderio:item_end_steel_boots>);
recipes.addShaped("enderioverhaul_ender_boots", <enderio:item_end_steel_boots>,
	[[<ore:ingotEndSteel>, <ore:skullSentientEnder>, <ore:ingotEndSteel>],
	 [<ore:ingotStellarAlloy>, null, <ore:ingotStellarAlloy>]]);

// Shield
recipes.remove(<enderio:item_end_steel_shield>);
recipes.addShaped("enderioverhaul_ender_shield", <enderio:item_end_steel_shield>,
	[[<ore:ingotEndSteel>, <ore:skullSentientEnder>, <ore:ingotEndSteel>],
	 [<ore:ingotEndSteel>, null, <ore:ingotEndSteel>],
	 [null, <ore:ingotEndSteel>]]);

// The Ender Mk2/Sword
recipes.remove(<enderio:item_end_steel_sword>);
recipes.addShaped("enderioverhaul_ender_sword", <enderio:item_end_steel_sword>,
	[[<ore:ingotEndSteel>],
	 [<ore:skullZombieFrankenstein>],
	 [<enderio:item_material:71>]]);

// Pickaxe
recipes.remove(<enderio:item_end_steel_pickaxe>);
recipes.addShaped("enderioverhaul_ender_pickaxe", <enderio:item_end_steel_pickaxe>,
	[[<ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>],
	 [null, <ore:skullZombieFrankenstein>],
	 [null, <enderio:item_material:71>]]);

// Axe
recipes.remove(<enderio:item_end_steel_axe>);
recipes.addShapedMirrored("enderioverhaul_ender_axe", <enderio:item_end_steel_axe>,
	[[<ore:ingotEndSteel>, <ore:ingotEndSteel>],
	 [<ore:ingotEndSteel>, <ore:skullZombieFrankenstein>],
	 [null, <enderio:item_material:71>]]);

// Bow
recipes.remove(<enderio:item_end_steel_bow>);
recipes.addShapedMirrored("enderioverhaul_ender_bow", <enderio:item_end_steel_bow>,
	[[null, <enderio:item_material:71>, <ore:string>],
	 [<ore:skullZombieFrankenstein>, null, <ore:string>],
	 [null, <enderio:item_material:71>, <ore:string>]]);

# Dark Upgrades

// Simple Solar
recipes.remove(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar"}));
recipes.addShapeless("enderioverhaul_dark_steel_upgrade_simple_solar", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar"}),
	[<enderio:item_dark_steel_upgrade>, <ore:itemPlatePhotovoltaic>]);
	
// Empowered I
recipes.remove(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade"}));
recipes.addShapeless("enderioverhaul_dark_steel_upgrade_empowered_1", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade"}),
	[<enderio:item_dark_steel_upgrade>, <enderio:item_basic_capacitor>]);

// Empowered II
recipes.remove(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade1"}));
recipes.addShapeless("enderioverhaul_dark_steel_upgrade_empowered_2", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade1"}),
	[<enderio:item_dark_steel_upgrade>, <enderio:item_basic_capacitor:1>]);

// Empowered III
recipes.remove(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade2"}));
recipes.addShapeless("enderioverhaul_dark_steel_upgrade_empowered_3", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade2"}),
	[<enderio:item_dark_steel_upgrade>, <ore:skullEnderResonator>]);

// Empowered V
recipes.remove(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade4"}));
recipes.addShapeless("enderioverhaul_dark_steel_upgrade_empowered_5", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:energyupgrade4"}),
	[<enderio:item_dark_steel_upgrade>, <enderio:item_capacitor_totemic>]);