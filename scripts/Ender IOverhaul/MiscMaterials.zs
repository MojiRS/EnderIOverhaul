#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;
import mods.enderio.AlloySmelter;
import mods.enderio.SagMill;
import mods.enderio.SoulBinder;
import mods.enderio.SliceNSplice;

/* Removed */

// Organic Dyes
AlloySmelter.removeRecipe(<enderio:item_material:48>);
AlloySmelter.removeRecipe(<enderio:item_material:49>);
AlloySmelter.removeRecipe(<enderio:item_material:50>);
JEI.hide(<enderio:item_material:48>);
JEI.hide(<enderio:item_material:49>);
JEI.hide(<enderio:item_material:50>);
<ore:dyeGreen>.remove(<enderio:item_material:48>);
<ore:dyeBrown>.remove(<enderio:item_material:49>);
<ore:dyeBlack>.remove(<enderio:item_material:50>);

// End Steel Chassis
JEI.removeAndHide(<enderio:item_material:66>);

// Grains of Vibrancy
SagMill.removeRecipe(<enderio:item_material:15>);
JEI.hide(<enderio:item_material:35>);

// Infinity Reagent
AlloySmelter.removeRecipe(<enderio:item_material:75>);
JEI.hide(<enderio:item_material:75>);

// Clippings and Trimmings & Twigs and Prunings
val toRemove = [<minecraft:yellow_flower>, <minecraft:reeds>, <minecraft:deadbush>, <minecraft:leaves>, <minecraft:vine>, <minecraft:cactus>, <minecraft:waterlily>] as IItemStack[];
for i in toRemove {
	SagMill.removeRecipe(i);
}
val flowerSmall = <minecraft:red_flower>.definition;
val grassTall = <minecraft:tallgrass>.definition;
val plantDouble = <minecraft:double_plant>.definition;
for i in 0 to 9 {
	SagMill.removeRecipe(flowerSmall.makeStack(i));
}
for i in 0 to 3 {
	SagMill.removeRecipe(grassTall.makeStack(i));
}
for i in 0 to 6 {
	SagMill.removeRecipe(plantDouble.makeStack(i));
}
SagMill.addRecipe([<minecraft:dye:11>, <minecraft:dye:11>, <minecraft:dye:11>], [0.8, 0.6, 0.3], <minecraft:yellow_flower>, "MULTIPLY_OUTPUT", 900);
SagMill.addRecipe([<minecraft:dye:1>, <minecraft:dye:1>, <minecraft:dye:1>], [0.8, 0.6, 0.3], <minecraft:red_flower>, "MULTIPLY_OUTPUT", 900);
SagMill.addRecipe([<minecraft:dye:12>, <minecraft:dye:12>, <minecraft:dye:12>], [0.8, 0.6, 0.3], <minecraft:red_flower:1>, "MULTIPLY_OUTPUT", 900);
SagMill.addRecipe([<minecraft:dye:13>, <minecraft:dye:13>, <minecraft:dye:13>], [0.8, 0.6, 0.3], <minecraft:red_flower:2>, "MULTIPLY_OUTPUT", 900);
SagMill.addRecipe([<minecraft:dye:7>, <minecraft:dye:7>, <minecraft:dye:7>], [0.8, 0.6, 0.3], <minecraft:red_flower:3>, "MULTIPLY_OUTPUT", 900);
SagMill.addRecipe([<minecraft:dye:1>, <minecraft:dye:1>, <minecraft:dye:1>], [0.8, 0.6, 0.3], <minecraft:red_flower:4>, "MULTIPLY_OUTPUT", 900);
SagMill.addRecipe([<minecraft:dye:14>, <minecraft:dye:14>, <minecraft:dye:14>], [0.8, 0.6, 0.3], <minecraft:red_flower:5>, "MULTIPLY_OUTPUT", 900);
SagMill.addRecipe([<minecraft:dye:7>, <minecraft:dye:7>, <minecraft:dye:7>], [0.8, 0.6, 0.3], <minecraft:red_flower:6>, "MULTIPLY_OUTPUT", 900);
SagMill.addRecipe([<minecraft:dye:9>, <minecraft:dye:9>, <minecraft:dye:9>], [0.8, 0.6, 0.3], <minecraft:red_flower:7>, "MULTIPLY_OUTPUT", 900);
SagMill.addRecipe([<minecraft:dye:7>, <minecraft:dye:7>, <minecraft:dye:7>], [0.8, 0.6, 0.3], <minecraft:red_flower:8>, "MULTIPLY_OUTPUT", 900);
SagMill.addRecipe([<minecraft:dye:11> * 2, <minecraft:dye:11>, <minecraft:dye:11> * 2], [0.8, 0.6, 0.3], <minecraft:double_plant>, "MULTIPLY_OUTPUT", 900);
SagMill.addRecipe([<minecraft:dye:13> * 2, <minecraft:dye:13>, <minecraft:dye:13> * 2], [0.8, 0.6, 0.3], <minecraft:double_plant:1>, "MULTIPLY_OUTPUT", 900);
SagMill.addRecipe([<minecraft:dye:1> * 2, <minecraft:dye:1>, <minecraft:dye:1> * 2], [0.8, 0.6, 0.3], <minecraft:double_plant:4>, "MULTIPLY_OUTPUT", 900);
SagMill.addRecipe([<minecraft:dye:9> * 2, <minecraft:dye:9>, <minecraft:dye:9> * 2], [0.8, 0.6, 0.3], <minecraft:double_plant:5>, "MULTIPLY_OUTPUT", 900);
SagMill.addRecipe([<minecraft:sugar>, <minecraft:sugar>, <minecraft:sugar>], [1, 0.5, 0.5], <minecraft:reeds>, "MULTIPLY_OUTPUT", 2000);
JEI.hide(<enderio:item_material:46>);
JEI.hide(<enderio:item_material:47>);

// Enhanced & Simple Machine Parts
JEI.removeAndHide(<enderio:item_material:68>);
JEI.removeAndHide(<enderio:item_material:69>);

// Nethercotta
AlloySmelter.removeRecipe(<enderio:item_material:72>);
JEI.hide(<enderio:item_material:72>);

// Clay-Coated Glowstone Dust
AlloySmelter.removeRecipe(<enderio:item_material:76>);
SagMill.removeRecipe(<enderio:item_material:76>);
SagMill.addRecipe([<enderio:block_holy_fog>, <enderio:block_holy_fog>, <enderio:block_holy_fog>], [0.8, 0.6, 0.3], <ore:dustGlowstone>, "MULTIPLY_OUTPUT", 2000);
JEI.hide(<enderio:item_material:76>);

// Black Paper
JEI.removeAndHide(<enderio:item_material:77>);
JEI.removeAndHide(<enderio:block_dark_paper_anvil:*>);

// Enticing Crystal
SoulBinder.removeRecipe(<enderio:item_material:17>);
JEI.hide(<enderio:item_material:17>);

// Zombie Electrode
SliceNSplice.removeRecipe(<enderio:item_material:40>);
JEI.hide(<enderio:item_material:40>);

// Tormented Enderman Head
SliceNSplice.removeRecipe(<enderio:block_enderman_skull:2>);
JEI.hide(<enderio:block_enderman_skull:2>);

// Wireless Energy Transmitter Dish Assembly
JEI.removeAndHide(<enderio:item_material:65>);

# Alloys | also see Compat\ThermalExpansion.zs, Compat\EnderIOTiC.zs, and Compat\IndustrialForegoing.zs

// Redstone Alloy
recipes.replaceAllOccurences(<enderio:item_alloy_ingot:3>, <ore:dustRedstone>);
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:3>);
JEI.removeAndHide(<enderio:item_alloy_ingot:3>);
JEI.removeAndHide(<enderio:block_alloy:3>);
JEI.removeAndHide(<enderio:item_alloy_nugget:3>);
JEI.removeAndHide(<enderio:item_alloy_ball:3>);

// Conductive Iron
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:4>);
JEI.removeAndHide(<enderio:item_alloy_ingot:4>);
JEI.removeAndHide(<enderio:block_alloy:4>);
JEI.removeAndHide(<enderio:item_alloy_nugget:4>);
JEI.removeAndHide(<enderio:item_alloy_ball:4>);

// Pulsating Iron
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:5>);
JEI.removeAndHide(<enderio:item_alloy_ingot:5>);
JEI.removeAndHide(<enderio:block_alloy:5>);
JEI.removeAndHide(<enderio:item_alloy_nugget:5>);
JEI.removeAndHide(<enderio:item_alloy_ball:5>);

// Iron Alloy
val ingredientsIronAlloy = [<ore:ingotCopper>, <ore:ingotTin>, <ore:ingotLead>, <ore:ingotSilver>, <ore:ingotAluminium>, <ore:ingotNickel>, <ore:ingotZinc>, <ore:ingotPlatinum>,
							<ore:ingotOsmium>, <ore:ingotArdite>, <ore:ingotCobalt>, <ore:ingotTitanium>, <ore:ingotMagnesium>, <ore:ingotTungsten>] as IOreDictEntry[];
for i in ingredientsIronAlloy {
	if(!i.empty) {
		AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:9>);
		break;
	}
}
JEI.removeAndHide(<enderio:item_alloy_ingot:9>);
JEI.removeAndHide(<enderio:block_alloy:9>);
JEI.removeAndHide(<enderio:item_alloy_nugget:9>);
JEI.removeAndHide(<enderio:item_alloy_ball:9>);

// Crude Steel
AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot>);
JEI.removeAndHide(<enderio:item_alloy_endergy_ingot>);
JEI.removeAndHide(<enderio:block_alloy_endergy>);
JEI.removeAndHide(<enderio:item_alloy_endergy_nugget>);
JEI.removeAndHide(<enderio:item_alloy_endergy_ball>);

// Crystalline Alloy
AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:1>);
JEI.removeAndHide(<enderio:item_alloy_endergy_ingot:1>);
JEI.removeAndHide(<enderio:block_alloy_endergy:1>);
JEI.removeAndHide(<enderio:item_alloy_endergy_nugget:1>);
JEI.removeAndHide(<enderio:item_alloy_endergy_ball:1>);

// Crystalline Pink Slime
JEI.removeAndHide(<enderio:item_alloy_endergy_ingot:4>);
JEI.removeAndHide(<enderio:block_alloy_endergy:4>);
JEI.removeAndHide(<enderio:item_alloy_endergy_nugget:4>);	
JEI.removeAndHide(<enderio:item_alloy_endergy_ball:4>);

// Energetic Silver
if (!<ore:ingotSilver>.empty) {
    AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:5>);
}
JEI.removeAndHide(<enderio:item_alloy_endergy_ingot:5>);
JEI.removeAndHide(<enderio:block_alloy_endergy:5>);
JEI.removeAndHide(<enderio:item_alloy_endergy_nugget:5>);
JEI.removeAndHide(<enderio:item_alloy_endergy_ball:5>);

// Vivid Alloy
AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:6>);
JEI.removeAndHide(<enderio:item_alloy_endergy_ingot:6>);
JEI.removeAndHide(<enderio:block_alloy_endergy:6>);
JEI.removeAndHide(<enderio:item_alloy_endergy_nugget:6>);
JEI.removeAndHide(<enderio:item_alloy_endergy_ball:6>);
	
//-----------------------------------------------------------

/* Changed */

// Prismarine Crystals
SagMill.removeRecipe(<minecraft:prismarine_shard>);
SagMill.addRecipe([<minecraft:prismarine_crystals>, <minecraft:prismarine_crystals>], [0.3, 0.2], <minecraft:prismarine_shard>, "MULTIPLY_OUTPUT", 2000);

// Machine Parts
recipes.remove(<enderio:item_material:2>);
recipes.addShaped("enderioverhaul_machine_parts", <enderio:item_material:2> * 16,
	[[null, <ore:nuggetIron>],
	 [<ore:nuggetIron>, <ore:itemMachineChassi>, <ore:nuggetIron>],
	 [null, <ore:nuggetIron>]]);

# Crystals

// Pulsating
recipes.remove(<enderio:item_material:14>);
recipes.addShaped("enderioverhaul_pulsating_crystal", <enderio:item_material:14>,
	[[<ore:nuggetEnderpearl>, <ore:nuggetEnderpearl>, <ore:nuggetEnderpearl>],
	 [<ore:nuggetEnderpearl>, <ore:gemDiamond>, <ore:nuggetEnderpearl>],
	 [<ore:nuggetEnderpearl>, <ore:nuggetEnderpearl>, <ore:nuggetEnderpearl>]]);

// Ender
SoulBinder.removeRecipe(<enderio:item_material:16>);
SoulBinder.addRecipe(<enderio:item_material:16>, <ore:gemDiamond>, ["minecraft:enderman"], 150000, 6);

// Weather
recipes.remove(<enderio:item_material:18>);
SoulBinder.addRecipe(<enderio:item_material:18>, <ore:itemPulsatingCrystal>, ["minecraft:guardian"], 200000, 8);

# Alloys

// Electrical Steel
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot>, [<ore:ingotIron>, <ore:dustBedrock>, <ore:itemSilicon>], 10000, 0.5);

// Energetic Alloy
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:1>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:1>, [<ore:ingotGold>, <ore:itemBlazePowder>, <ore:dustGlowstone>], 10000, 0.7);

// Soularium
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:7>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:7>, [<ore:ingotGold>, <ore:cropNetherWart>, <minecraft:soul_sand>], 10000, 0.7);

// End Steel
AlloySmelter.removeRecipe(<enderio:item_alloy_ingot:8>);
AlloySmelter.addRecipe(<enderio:item_alloy_ingot:8>, [<ore:ingotDarkSteel>, <minecraft:chorus_fruit_popped>, <ore:endstone>], 20000, 1);

// Melodic Alloy
AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:2>);
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:2>, [<ore:ingotElectricalSteel>, <minecraft:shulker_shell>], 15000, 1);

// Stellar Alloy
AlloySmelter.removeRecipe(<enderio:item_alloy_endergy_ingot:3>);
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:3> * 8, [<ore:ingotVibrantAlloy> * 4, <ore:netherStar>, <ore:itemPrecientPowder> * 2], 60000, 2);