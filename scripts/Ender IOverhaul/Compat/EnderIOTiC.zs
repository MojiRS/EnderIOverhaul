#priority 100
#modloaded enderiointegrationticlate tconstruct

import mods.jei.JEI;
import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;
import mods.tconstruct.Melting;

/* Removed */

// Redstone Alloy
Casting.removeTableRecipe(<enderio:item_alloy_ingot:3>);
Casting.removeTableRecipe(<enderio:item_alloy_nugget:3>);
Casting.removeTableRecipe(<enderio:item_alloy_ball:3>);
Casting.removeBasinRecipe(<enderio:block_alloy:3>);
Melting.removeRecipe(<liquid:redstone_alloy>);
JEI.hide(<liquid:redstone_alloy>);
JEI.hide(<forge:bucketfilled>.withTag({FluidName: "redstone_alloy", Amount: 1000}));

// Conductive Iron
Casting.removeTableRecipe(<enderio:item_alloy_ingot:4>);
Casting.removeTableRecipe(<enderio:item_alloy_nugget:4>);
Casting.removeTableRecipe(<enderio:item_alloy_ball:4>);
Casting.removeBasinRecipe(<enderio:block_alloy:4>);
Melting.removeRecipe(<liquid:conductive_iron>);
JEI.hide(<liquid:conductive_iron>);
JEI.hide(<forge:bucketfilled>.withTag({FluidName: "conductive_iron", Amount: 1000}));

// Pulsating Iron
Casting.removeTableRecipe(<enderio:item_alloy_ingot:5>);
Casting.removeTableRecipe(<enderio:item_alloy_nugget:5>);
Casting.removeTableRecipe(<enderio:item_alloy_ball:5>);
Casting.removeBasinRecipe(<enderio:block_alloy:5>);
Melting.removeRecipe(<liquid:pulsating_iron>);
JEI.hide(<liquid:pulsating_iron>);
JEI.hide(<forge:bucketfilled>.withTag({FluidName: "pulsating_iron", Amount: 1000}));

// Iron Alloy
Casting.removeTableRecipe(<enderio:item_alloy_ingot:9>);
Casting.removeTableRecipe(<enderio:item_alloy_nugget:9>);
Casting.removeTableRecipe(<enderio:item_alloy_ball:9>);
Casting.removeBasinRecipe(<enderio:block_alloy:9>);
Melting.removeRecipe(<liquid:construction_alloy>);
JEI.hide(<liquid:construction_alloy>);
JEI.hide(<forge:bucketfilled>.withTag({FluidName: "construction_alloy", Amount: 1000}));

// Crude Steel
Casting.removeTableRecipe(<enderio:item_alloy_endergy_ingot>);
Casting.removeTableRecipe(<enderio:item_alloy_endergy_nugget>);
Casting.removeTableRecipe(<enderio:item_alloy_endergy_ball>);
Casting.removeBasinRecipe(<enderio:block_alloy_endergy>);
Melting.removeRecipe(<liquid:crude_steel>);
JEI.hide(<liquid:crude_steel>);
JEI.hide(<forge:bucketfilled>.withTag({FluidName: "crude_steel", Amount: 1000}));

// Crystalline Alloy
Casting.removeTableRecipe(<enderio:item_alloy_endergy_ingot:1>);
Casting.removeTableRecipe(<enderio:item_alloy_endergy_nugget:1>);
Casting.removeTableRecipe(<enderio:item_alloy_endergy_ball:1>);
Casting.removeBasinRecipe(<enderio:block_alloy_endergy:1>);
Melting.removeRecipe(<liquid:crystalline_alloy>);
JEI.hide(<liquid:crystalline_alloy>);
JEI.hide(<forge:bucketfilled>.withTag({FluidName: "crystalline_alloy", Amount: 1000}));

// Crystalline Pink Slime
Casting.removeTableRecipe(<enderio:item_alloy_endergy_ingot:4>);
Casting.removeTableRecipe(<enderio:item_alloy_endergy_nugget:4>);
Casting.removeTableRecipe(<enderio:item_alloy_endergy_ball:4>);
Casting.removeBasinRecipe(<enderio:block_alloy_endergy:4>);
Melting.removeRecipe(<liquid:crystalline_pink_slime>);
JEI.hide(<liquid:crystalline_pink_slime>);
JEI.hide(<forge:bucketfilled>.withTag({FluidName: "crystalline_pink_slime", Amount: 1000}));

// Energetic Silver
Casting.removeTableRecipe(<enderio:item_alloy_endergy_ingot:5>);
Casting.removeTableRecipe(<enderio:item_alloy_endergy_nugget:5>);
Casting.removeTableRecipe(<enderio:item_alloy_endergy_ball:5>);
Casting.removeBasinRecipe(<enderio:block_alloy_endergy:5>);
Melting.removeRecipe(<liquid:energetic_silver>);
Alloy.removeRecipe(<liquid:energetic_silver>);
JEI.hide(<liquid:energetic_silver>);
JEI.hide(<forge:bucketfilled>.withTag({FluidName: "energetic_silver", Amount: 1000}));

// Vivid Alloy
Casting.removeTableRecipe(<enderio:item_alloy_endergy_ingot:6>);
Casting.removeTableRecipe(<enderio:item_alloy_endergy_nugget:6>);
Casting.removeTableRecipe(<enderio:item_alloy_endergy_ball:6>);
Casting.removeBasinRecipe(<enderio:block_alloy_endergy:6>);
Melting.removeRecipe(<liquid:vivid_alloy>);
Alloy.removeRecipe(<liquid:vivid_alloy>);
JEI.hide(<liquid:vivid_alloy>);
JEI.hide(<forge:bucketfilled>.withTag({FluidName: "vivid_alloy", Amount: 1000}));