# Potion of Decay

// Basic
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:regeneration"}), <minecraft:fermented_spider_eye>, <minecraft:potion>.withTag({Potion: "enderio:withering"}));

if(loadedMods has "thermalfoundation") {
	// Replacing CoFH basic decay with Ender IO
	brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "cofhcore:withering"}), <minecraft:fermented_spider_eye>);
	brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "cofhcore:wither+"}), <minecraft:redstone>);
	brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "cofhcore:wither2"}), <minecraft:glowstone_dust>);
	brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "cofhcore:wither"}), <minecraft:gunpowder>);
	brewing.addBrew(<minecraft:potion>.withTag({Potion: "enderio:withering"}), <minecraft:redstone>, <minecraft:potion>.withTag({Potion: "cofhcore:wither+"}));
	brewing.addBrew(<minecraft:potion>.withTag({Potion: "enderio:withering"}), <minecraft:glowstone_dust>, <minecraft:potion>.withTag({Potion: "cofhcore:wither2"}));
	brewing.addBrew(<minecraft:potion>.withTag({Potion: "enderio:withering"}), <minecraft:gunpowder>, <minecraft:splash_potion>.withTag({Potion: "cofhcore:wither"}));
	
	// Replacing CoFH basic lingering decay with Ender IO
	brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "cofhcore:wither"}), <minecraft:dragon_breath>);
	brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "cofhcore:wither"}), <minecraft:fermented_spider_eye>);
	brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "cofhcore:wither+"}), <minecraft:redstone>);
	brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "cofhcore:wither2"}), <minecraft:glowstone_dust>);
	brewing.addBrew(<minecraft:splash_potion>.withTag({Potion: "cofhcore:wither"}), <minecraft:dragon_breath>, <minecraft:lingering_potion>.withTag({Potion: "enderio:withering"}));
	brewing.addBrew(<minecraft:lingering_potion>.withTag({Potion: "minecraft:regeneration"}), <minecraft:fermented_spider_eye>, <minecraft:lingering_potion>.withTag({Potion: "enderio:withering"}));
	brewing.addBrew(<minecraft:lingering_potion>.withTag({Potion: "enderio:withering"}), <minecraft:redstone>, <minecraft:lingering_potion>.withTag({Potion: "cofhcore:wither+"}));
	brewing.addBrew(<minecraft:lingering_potion>.withTag({Potion: "enderio:withering"}), <minecraft:glowstone_dust>, <minecraft:lingering_potion>.withTag({Potion: "cofhcore:wither2"}));
} else {
	// Extended
	brewing.addBrew(<minecraft:potion>.withTag({Potion: "enderio:withering"}), <minecraft:redstone>, <minecraft:potion>.withTag({Potion: "enderio:long_withering"}));
	brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:long_regeneration"}), <minecraft:fermented_spider_eye>, <minecraft:potion>.withTag({Potion: "enderio:long_withering"}));
	
	// Splash Basic
	brewing.addBrew(<minecraft:potion>.withTag({Potion: "enderio:withering"}), <minecraft:gunpowder>, <minecraft:splash_potion>.withTag({Potion: "enderio:withering"}));
	brewing.addBrew(<minecraft:splash_potion>.withTag({Potion: "minecraft:regeneration"}), <minecraft:fermented_spider_eye>, <minecraft:splash_potion>.withTag({Potion: "enderio:withering"}));
	
	// Splash Extended
	brewing.addBrew(<minecraft:splash_potion>.withTag({Potion: "enderio:withering"}), <minecraft:redstone>, <minecraft:splash_potion>.withTag({Potion: "enderio:long_withering"}));
	brewing.addBrew(<minecraft:potion>.withTag({Potion: "enderio:long_withering"}), <minecraft:gunpowder>, <minecraft:splash_potion>.withTag({Potion: "enderio:long_withering"}));
	brewing.addBrew(<minecraft:splash_potion>.withTag({Potion: "minecraft:long_regeneration"}), <minecraft:fermented_spider_eye>, <minecraft:splash_potion>.withTag({Potion: "enderio:long_withering"}));
	
	// Lingering Basic
	brewing.addBrew(<minecraft:splash_potion>.withTag({Potion: "enderio:withering"}), <minecraft:dragon_breath>, <minecraft:lingering_potion>.withTag({Potion: "enderio:withering"}));
	brewing.addBrew(<minecraft:lingering_potion>.withTag({Potion: "minecraft:regeneration"}), <minecraft:fermented_spider_eye>, <minecraft:lingering_potion>.withTag({Potion: "enderio:withering"}));
	
	// Lingering Extended
	brewing.addBrew(<minecraft:lingering_potion>.withTag({Potion: "enderio:withering"}), <minecraft:redstone>, <minecraft:lingering_potion>.withTag({Potion: "enderio:long_withering"}));
	brewing.addBrew(<minecraft:splash_potion>.withTag({Potion: "enderio:long_withering"}), <minecraft:dragon_breath>, <minecraft:lingering_potion>.withTag({Potion: "enderio:long_withering"}));
	brewing.addBrew(<minecraft:lingering_potion>.withTag({Potion: "minecraft:long_regeneration"}), <minecraft:fermented_spider_eye>, <minecraft:lingering_potion>.withTag({Potion: "enderio:long_withering"}));
}