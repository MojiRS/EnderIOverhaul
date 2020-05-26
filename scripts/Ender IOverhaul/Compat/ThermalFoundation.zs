#priority 100
#modloaded thermalfoundation

import mods.enderio.AlloySmelter;

/* Changed */

// Enderium
AlloySmelter.removeRecipe(<enderio:item_material:39>);
AlloySmelter.removeRecipe(<thermalfoundation:material:167>);
AlloySmelter.addRecipe(<thermalfoundation:material:167> * 4, [<ore:ingotLead> * 3, <ore:ingotPlatinum>, <ore:enderpearl> * 4], 50000, 2);
mods.jei.JEI.hide(<enderio:item_material:39>);