#priority 100

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;

/* These are generally quick and dirty tweaks to chest loot so they aren't as weird and unbalanced as usual, and don't contain removed items.
   To be redone later - adding proper weights, more interesting loot, etc. I just can't be bothered at the moment. */

# Abandoned Mineshaft

val poolMineshaft = LootTables.getTable("enderio:chests/abandoned_mineshaft").getPool("Ender IO");
val toRemoveMineshaft = ["enderio:item_dark_steel_sword:0", "enderio:item_material:9", "enderio:item_alloy_ingot:6", "enderio:block_exit_rail:0"] as string[];
for i in toRemoveMineshaft {
	poolMineshaft.removeEntry(i);
}
poolMineshaft.addItemEntryHelper(<enderio:item_alloy_ingot>, 1, 1, [Functions.setCount(1, 2)], [Conditions.randomChance(0.25)], "abandoned_mineshaft_electrical_steel");
poolMineshaft.addItemEntryHelper(<enderio:item_alloy_ingot:6>, 1, 1, [], [Conditions.randomChance(0.25)], "abandoned_mineshaft_dark_steel");
poolMineshaft.addItemEntryHelper(<enderio:block_exit_rail>, 1, 1, [Functions.setCount(1, 2)], [Conditions.randomChance(0.15)], "abandoned_mineshaft_exit_rail");

# Pyramid

val poolPyramid = LootTables.getTable("enderio:chests/desert_pyramid").getPool("Ender IO");
val toRemovePyramid = ["enderio:item_dark_steel_sword:0", "enderio:item_material:13", "enderio:item_travel_staff:0"] as string[];
for i in toRemovePyramid {
	poolPyramid.removeEntry(i);
}
poolPyramid.addItemEntryHelper(<enderio:item_alloy_ingot>, 1, 1, [Functions.setCount(1, 2)], [Conditions.randomChance(0.25)], "desert_pyramid_electrical_steel");
poolPyramid.addItemEntryHelper(<enderio:item_alloy_ingot:6>, 1, 1, [], [Conditions.randomChance(0.25)], "desert_pyramid_dark_steel");

# End City

val poolEndCity = LootTables.getTable("enderio:chests/end_city_treasure").getPool("Ender IO");
val toRemoveEndCity = ["ShulkerSoulVial", "enderio:item_soul_vial:0", "enderio:item_dark_steel_bow:0", "dsu", "enderio:item_material:12", "enderio:item_material:13"] as string[];
for i in toRemoveEndCity {
	poolEndCity.removeEntry(i);
}
poolEndCity.addItemEntryHelper(<enderio:item_alloy_ingot:8>, 1, 1, [Functions.setCount(1, 2)], [Conditions.randomChance(0.25)], "end_city_treasure_end_steel");
poolEndCity.addItemEntryHelper(<enderio:item_alloy_endergy_ingot:2>, 1, 1, [], [Conditions.randomChance(0.25)], "end_city_treasure_melodic_alloy");
val gearDarkSteel = [<enderio:item_dark_steel_helmet>, <enderio:item_dark_steel_chestplate>, <enderio:item_dark_steel_leggings>, <enderio:item_dark_steel_boots>,
					 <enderio:item_dark_steel_pickaxe>, <enderio:item_dark_steel_axe>, <enderio:item_dark_steel_sword>, <enderio:item_dark_steel_bow>] as IItemStack[];
var counter = 0;
for i in gearDarkSteel {
	poolEndCity.addItemEntryHelper(i, 1, 1, [Functions.enchantWithLevels(20, 39, true)], [Conditions.randomChance(0.02)], "end_city_treasure_dark_gear_" + counter);
	counter = counter + 1;
}

# Igloo

val poolIgloo = LootTables.getTable("enderio:chests/igloo_chest").getPool("Ender IO");
val toRemoveIgloo = ["dsu", "PolarBearSoulVial"] as string[];
for i in toRemoveIgloo {
	poolIgloo.removeEntry(i);
}
poolIgloo.addItemEntryHelper(<enderio:item_alloy_ingot>, 1, 1, [Functions.setCount(1, 2)], [Conditions.randomChance(0.25)], "igloo_chest_electrical_steel");
poolIgloo.addItemEntryHelper(<enderio:item_alloy_ingot:6>, 1, 1, [], [Conditions.randomChance(0.25)], "igloo_chest_dark_steel");

# Jungle Temple

val poolJungleTemple = LootTables.getTable("enderio:chests/jungle_temple").getPool("Ender IO");
val toRemoveJungleTemple = ["enderio:item_dark_steel_sword:0", "enderio:item_travel_staff:0"] as string[];
for i in toRemoveJungleTemple {
	poolJungleTemple.removeEntry(i);
}
poolJungleTemple.addItemEntryHelper(<enderio:item_alloy_ingot>, 1, 1, [Functions.setCount(1, 2)], [Conditions.randomChance(0.25)], "jungle_temple_electrical_steel");
poolJungleTemple.addItemEntryHelper(<enderio:item_alloy_ingot:6>, 1, 1, [], [Conditions.randomChance(0.25)], "jungle_temple_dark_steel");

# Nether Fortress

val poolFortress = LootTables.getTable("enderio:chests/nether_bridge").getPool("Ender IO");
val toRemoveFortress = ["enderio:item_dark_steel_boots:0", "enderio:item_material:11"] as string[];
for i in toRemoveFortress {
	poolFortress.removeEntry(i);
}
poolFortress.addItemEntryHelper(<enderio:item_alloy_ingot:7>, 1, 1, [Functions.setCount(1, 2)], [Conditions.randomChance(0.25)], "nether_bridge_soularium");
poolFortress.addItemEntryHelper(<enderio:item_alloy_ingot:1>, 1, 1, [], [Conditions.randomChance(0.25)], "nether_bridge_energetic_alloy");

# Dungeon

val poolDungeon = LootTables.getTable("enderio:chests/simple_dungeon").getPool("Ender IO");
val toRemoveDungeon = ["enderio:item_conduit_probe:0", "enderio:item_dark_steel_sword:0", "enderio:item_dark_steel_boots:0", "enderio:item_material:9"] as string[];
for i in toRemoveDungeon {
	poolDungeon.removeEntry(i);
}
poolDungeon.addItemEntryHelper(<enderio:item_alloy_ingot>, 1, 1, [Functions.setCount(1, 2)], [Conditions.randomChance(0.25)], "simple_dungeon_electrical_steel");

# Blacksmith

val poolBlacksmith = LootTables.getTable("enderio:chests/village_blacksmith").getPool("Ender IO");
val toRemoveBlacksmith = ["enderio:item_alloy_ingot:3", "enderio:item_alloy_ingot:5", "enderio:item_alloy_ingot:2", "enderio:item_material:9", "enderio:item_material:10", "enderio:item_material:11", "enderio:item_material:12",
						  "enderio:item_material:13", "enderio:item_dark_steel_sword:0", "enderio:item_dark_steel_boots:0", "dsu", "enderio:item_alloy_ingot:0", "enderio:item_alloy_ingot:6"] as string[];
for i in toRemoveBlacksmith {
	poolBlacksmith.removeEntry(i);
}
poolBlacksmith.addItemEntryHelper(<enderio:item_dark_steel_sword>, 1, 1, [Functions.setDamage(0.01, 0.5)], [Conditions.randomChance(0.05)], "village_blacksmith_dark_steel_sword");
poolBlacksmith.addItemEntryHelper(<enderio:item_alloy_ingot>, 1, 1, [Functions.setCount(1, 2)], [Conditions.randomChance(0.25)], "village_blacksmith_electrical_steel");
poolBlacksmith.addItemEntryHelper(<enderio:item_alloy_ingot:6>, 1, 1, [], [Conditions.randomChance(0.25)], "village_blacksmith_dark_steel");


# Woodland Mansion

val poolWoodlandMansion = LootTables.getTable("enderio:chests/woodland_mansion").getPool("Ender IO");
val toRemoveWoodlandMansion = ["enderio:item_dark_steel_bow:0", "enderio:item_dark_steel_axe:0", "enderio:item_material:10"] as string[];
for i in toRemoveWoodlandMansion {
	poolWoodlandMansion.removeEntry(i);
}
poolWoodlandMansion.addItemEntryHelper(<enderio:item_alloy_ingot:1>, 1, 1, [Functions.setCount(1, 2)], [Conditions.randomChance(0.25)], "woodland_mansion_energetic_alloy");
poolWoodlandMansion.addItemEntryHelper(<enderio:item_alloy_ingot:2>, 1, 1, [], [Conditions.randomChance(0.25)], "woodland_mansion_vibrant_alloy");