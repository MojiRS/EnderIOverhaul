#priority 100

// Duplicate recipes
recipes.removeByRecipeName("enderio:tweak_wood_hopper");
recipes.removeByRecipeName("enderio:tweak_stick_from_wood");
recipes.removeByRecipeName("enderio:tweak_chest_from_wood");


// Dark Steel Ladder
recipes.remove(<enderio:block_dark_steel_ladder>);
recipes.addShaped("enderioverhaul_dark_steel_ladder", <enderio:block_dark_steel_ladder> * 12,
	[[<ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>],
	 [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
	 [<ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>]]);

// Dark Steel Trapdoor
recipes.remove(<enderio:block_dark_steel_trapdoor>);
recipes.addShaped("enderioverhaul_dark_steel_trapdoor", <enderio:block_dark_steel_trapdoor> * 2,
	[[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
	 [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>]]);