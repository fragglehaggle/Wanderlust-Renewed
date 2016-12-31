#    recipes.remove(<>);
#    recipes.addShaped(<>,
#        [[<>,<>,<>],
#         [<>,<>,<>],
#         [<>,<>,<>]]);

# Vanilla
    recipes.remove(<minecraft:iron_ore>);
    recipes.addShapeless(<minecraft:iron_ore>, 
        [<rockhounding_oretiers:ironOres:2>],
        function(output, inputs, crafting) {
            if crafting.player.xp > 160 {
               crafting.player.removeXP(160);
               return output;
            } else {
                return null;
            }
        });
    recipes.addShapeless(<minecraft:iron_ore>, 
        [<rockhounding_oretiers:ironOres:3>],
        function(output, inputs, crafting) {
            if crafting.player.xp > 160 {
               crafting.player.removeXP(160);
               return output;
            } else {
                return null;
            }
        });

# Embers
    recipes.remove(<embers:ashenStone>);
    recipes.addShaped(<embers:ashenStone>*4,
        [[null,<ore:stone>,null],
         [<ore:stone>,<ore:dustAsh>,<ore:stone>],
         [null,<ore:stone>,null]]);

    recipes.remove(<embers:ashenBrick>);
    recipes.addShaped(<embers:ashenBrick>*4,
        [[null,<ore:bricksStone>,null],
         [<ore:bricksStone>,<ore:dustAsh>,<ore:bricksStone>],
         [null,<ore:bricksStone>,null]]);

# Extra Utilities
    # Portal to the Deep Dark
    recipes.remove(<extrautils2:Teleporter>);
    recipes.addShaped(<extrautils2:Teleporter>,
        [[<ore:compressed1xCobblestone>,<abyssalcraft:darkstone>,<ore:compressed1xCobblestone>],
         [<ore:dropofevil>,<biomesoplenty:terrestrial_artifact>,<ore:dropofevil>],
         [<ore:compressed1xCobblestone>,<abyssalcraft:darkstone>,<ore:compressed1xCobblestone>]]);

    # Fixing a recipe conflict; polished stone block
    recipes.remove(<extrautils2:DecorativeSolid:2>);
    recipes.addShaped(<extrautils2:DecorativeSolid:2>*4,
        [[<ore:bricksStone>,null,<ore:bricksStone>],
         [null,null,null],
         [<ore:bricksStone>,null,<ore:bricksStone>]]);
         
    # Wooden Spikes
    recipes.remove(<extrautils2:spike_wood>);
    recipes.addShaped(<extrautils2:spike_wood> * 4,
        [[null,<druidry:palisade>,null],
         [<druidry:palisade>,<ore:plankWood>,<druidry:palisade>],
         [<ore:plankWood>,<ore:logWood>,<ore:plankWood>]]);

# PrimalCore
    recipes.remove(<primal:netherstone>);
    recipes.addShapeless(<primal:netherstone>,[<nethercore:stone:1>]);
