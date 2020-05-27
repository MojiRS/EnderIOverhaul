#priority 100
#modloaded thermalexpansion

import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Factorizer;

/* Removed */

// Redstone Alloy
Factorizer.removeRecipeSplit(<enderio:block_alloy:3>);
Factorizer.removeRecipeSplit(<enderio:item_alloy_ingot:3>);
Factorizer.removeRecipeCombine(<enderio:item_alloy_nugget:3> * 9);
Factorizer.removeRecipeCombine(<enderio:item_alloy_ingot:3> * 9);

// Conductive Iron
InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <minecraft:redstone>);
InductionSmelter.removeRecipe(<thermalfoundation:material>, <minecraft:redstone>);
Factorizer.removeRecipeSplit(<enderio:block_alloy:4>);
Factorizer.removeRecipeSplit(<enderio:item_alloy_ingot:4>);
Factorizer.removeRecipeCombine(<enderio:item_alloy_nugget:4> * 9);
Factorizer.removeRecipeCombine(<enderio:item_alloy_ingot:4> * 9);

// Pulsating Iron
InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <minecraft:ender_pearl>);
InductionSmelter.removeRecipe(<thermalfoundation:material>, <minecraft:ender_pearl>);
Factorizer.removeRecipeSplit(<enderio:block_alloy:5>);
Factorizer.removeRecipeSplit(<enderio:item_alloy_ingot:5>);
Factorizer.removeRecipeCombine(<enderio:item_alloy_nugget:5> * 9);
Factorizer.removeRecipeCombine(<enderio:item_alloy_ingot:5> * 9);

// Iron Alloy
Factorizer.removeRecipeSplit(<enderio:block_alloy:9>);
Factorizer.removeRecipeSplit(<enderio:item_alloy_ingot:9>);
Factorizer.removeRecipeCombine(<enderio:item_alloy_nugget:9> * 9);
Factorizer.removeRecipeCombine(<enderio:item_alloy_ingot:9> * 9);

// Crude Steel
Factorizer.removeRecipeSplit(<enderio:block_alloy_endergy>);
Factorizer.removeRecipeSplit(<enderio:item_alloy_endergy_ingot>);
Factorizer.removeRecipeCombine(<enderio:item_alloy_endergy_nugget> * 9);
Factorizer.removeRecipeCombine(<enderio:item_alloy_endergy_ingot> * 9);

// Crystalline Alloy
Factorizer.removeRecipeSplit(<enderio:block_alloy_endergy:1>);
Factorizer.removeRecipeSplit(<enderio:item_alloy_endergy_ingot:1>);
Factorizer.removeRecipeCombine(<enderio:item_alloy_endergy_nugget:1> * 9);
Factorizer.removeRecipeCombine(<enderio:item_alloy_endergy_ingot:1> * 9);

// Crystalline Pink Slime
Factorizer.removeRecipeSplit(<enderio:block_alloy_endergy:4>);
Factorizer.removeRecipeSplit(<enderio:item_alloy_endergy_ingot:4>);
Factorizer.removeRecipeCombine(<enderio:item_alloy_endergy_nugget:4> * 9);
Factorizer.removeRecipeCombine(<enderio:item_alloy_endergy_ingot:4> * 9);

// Energetic Silver
Factorizer.removeRecipeSplit(<enderio:block_alloy_endergy:5>);
Factorizer.removeRecipeSplit(<enderio:item_alloy_endergy_ingot:5>);
Factorizer.removeRecipeCombine(<enderio:item_alloy_endergy_nugget:5> * 9);
Factorizer.removeRecipeCombine(<enderio:item_alloy_endergy_ingot:5> * 9);

// Vivid Alloy
Factorizer.removeRecipeSplit(<enderio:block_alloy_endergy:6>);
Factorizer.removeRecipeSplit(<enderio:item_alloy_endergy_ingot:6>);
Factorizer.removeRecipeCombine(<enderio:item_alloy_endergy_nugget:6> * 9);
Factorizer.removeRecipeCombine(<enderio:item_alloy_endergy_ingot:6> * 9);

// Electrical Steel
InductionSmelter.removeRecipe(<thermalfoundation:material:160>, <nuclearcraft:gem:6>);
InductionSmelter.removeRecipe(<thermalfoundation:material:96>, <nuclearcraft:gem:6>);

// Soularium
InductionSmelter.removeRecipe(<minecraft:soul_sand>, <minecraft:gold_ingot>);
InductionSmelter.removeRecipe(<minecraft:soul_sand>, <thermalfoundation:material:1>);