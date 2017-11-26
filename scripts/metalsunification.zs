# Metals Unification
val nope = <minecraft:barrier>;
val ctMat = <contenttweaker:material_part>;
val ctOre = <contenttweaker:sub_block_holder_0>;
val ctOr1 = <contenttweaker:sub_block_holder_1>;
val ctOr2 = <contenttweaker:sub_block_holder_2>;
val ctOr3 = <contenttweaker:sub_block_holder_3>;
val teMat = <thermalfoundation:material>;
val teSto = <thermalfoundation:storage>;
val teOre = <thermalfoundation:ore>;
val ieMat = <immersiveengineering:metal>;
val ieSto = <immersiveengineering:storage>;
val ieOre = <immersiveengineering:ore>;
val lvNug = <libvulpes:productnugget>;
val lvIng = <libvulpes:productingot>;
val lvPla = <libvulpes:productplate>;
val lvDus = <libvulpes:productdust>;
val lvSto = <libvulpes:metal0>;
val lvOre = <libvulpes:ore0>;

function unify(list as crafttweaker.item.IItemStack[][], oredict as crafttweaker.item.IIngredient[]){
    val nope = <minecraft:barrier>;
    for i, group in list {
        if !group[0].matches(nope) { recipes.remove(group[0]); }
        if !group[1].matches(nope) {
            recipes.remove(group[1]);
            if !group[5].matches(nope) {
                furnace.addRecipe(list[0][1], group[5], 0.5);
            }
            if !group[6].matches(nope) {
                furnace.addRecipe(list[0][1], group[6], 0.5);
            }
        }
        if !group[2].matches(nope) { recipes.remove(group[2]); }
        if !group[3].matches(nope) { recipes.remove(group[3]); }
        if !group[4].matches(nope) { recipes.remove(group[4]); }
        if !group[6].matches(nope) { recipes.remove(group[6]); }
        
        if i == 0 {
            furnace.remove(group[1]);
            furnace.addRecipe(group[1], group[5], 0.5);
            furnace.addRecipe(group[1], group[6], 0.1);
            recipes.addShapeless(group[0]*9, [oredict[1]]);
            recipes.addShapeless(group[1]*9, [oredict[2]]);
            recipes.addShapeless(group[1], 
                [oredict[0],oredict[0],oredict[0],oredict[0],oredict[0],oredict[0],oredict[0],oredict[0],oredict[0]]);
            recipes.addShapeless(group[2], 
                [oredict[1],oredict[1],oredict[1],oredict[1],oredict[1],oredict[1],oredict[1],oredict[1],oredict[1]]);
            recipes.addShapeless(group[6], [<immersiveengineering:tool:0>, oredict[5]]);
            recipes.addShaped(group[4],
                [[null,oredict[1],null],
                 [oredict[1],<ore:ingotIron>,oredict[1]],
                 [null,oredict[1],null]]);
            recipes.addShaped(group[3],[[<ore:toolMallet>],[oredict[1]]]);
            recipes.addShaped(group[3],[[<ore:toolMalletStone>],[oredict[1]]]);
            recipes.addShaped(group[3],[[<immersiveengineering:tool:0>.transformDamage()],[oredict[1]]]);
        }
    }
}

function unifyalloy(list as crafttweaker.item.IItemStack[][], oredict as crafttweaker.item.IIngredient[]){
    val nope = <minecraft:barrier>;
    for i, group in list {
        if !group[0].matches(nope) { recipes.remove(group[0]); }
        if !group[1].matches(nope) {
            recipes.remove(group[1]);
            if !group[5].matches(nope) {
                furnace.addRecipe(list[0][1], group[5], 0.5);
            }
            if !group[6].matches(nope) {
                furnace.addRecipe(list[0][1], group[6], 0.5);
            }
        }
        if !group[2].matches(nope) { recipes.remove(group[2]); }
        if !group[3].matches(nope) { recipes.remove(group[3]); }
        if !group[4].matches(nope) { recipes.remove(group[4]); }
        if !group[6].matches(nope) { recipes.remove(group[6]); }
        
        if i == 0 {
            furnace.remove(group[1]);
            furnace.addRecipe(group[1], group[6], 0.5);
            recipes.addShapeless(group[0]*9, [oredict[1]]);
            recipes.addShapeless(group[1]*9, [oredict[2]]);
            recipes.addShapeless(group[1], 
                [oredict[0],oredict[0],oredict[0],oredict[0],oredict[0],oredict[0],oredict[0],oredict[0],oredict[0]]);
            recipes.addShapeless(group[2], 
                [oredict[1],oredict[1],oredict[1],oredict[1],oredict[1],oredict[1],oredict[1],oredict[1],oredict[1]]);
            recipes.addShapeless(group[6], [<immersiveengineering:tool:0>, oredict[5]]);
            recipes.addShaped(group[4],
                [[null,oredict[1],null],
                 [oredict[1],<ore:ingotIron>,oredict[1]],
                 [null,oredict[1],null]]);
            recipes.addShaped(group[3],[[<ore:toolMallet>],[oredict[1]]]);
            recipes.addShaped(group[3],[[<ore:toolMalletStone>],[oredict[1]]]);
            recipes.addShaped(group[3],[[<immersiveengineering:tool:0>.transformDamage()],[oredict[1]]]);
        }
    }
}

# Aluminum
    val list_aluminum = [
    #    nugget                ingot                 block                plate                  gear                 ore                  dust
        [ieMat.withDamage(21), ieMat.withDamage(1),  ieSto.withDamage(1), ieMat.withDamage(31), ctMat.withDamage(171),ieOre.withDamage(1), ieMat.withDamage(10)],
        [lvNug.withDamage(9),  lvIng.withDamage(9),  lvSto.withDamage(9), lvPla.withDamage(9),  nope,                 lvOre.withDamage(9), lvDus.withDamage(9) ],
        [teMat.withDamage(196),teMat.withDamage(132),teSto.withDamage(4), teMat.withDamage(324),teMat.withDamage(260),teOre.withDamage(4), teMat.withDamage(68)]
    ] as crafttweaker.item.IItemStack[][];
    var aluminum_oredict = [<ore:nuggetAluminum>,<ore:ingotAluminum>,<ore:blockAluminum>,<ore:plateAluminum>,<ore:gearAluminum>,<ore:oreAluminum>,<ore:dustAluminum>] as crafttweaker.item.IIngredient[];
    unify(list_aluminum, aluminum_oredict);

# Brass
    val list_brass = [
    #    nugget                      ingot                      block                      plate                      gear                      ore  dust
        [<materialpart:brass:nugget>,<materialpart:brass:ingot>,<materialpart:brass:block>,<materialpart:brass:plate>,<materialpart:brass:gear>,nope,<materialpart:brass:dust>],
        [<primal:brass_nugget>,  <primal:brass_ingot>,  <primal:metalblock:12>,<primal:brass_plate>,  nope,                  nope, nope]
    ] as crafttweaker.item.IItemStack[][];
    var brass_oredict = [<ore:nuggetBrass>,<ore:ingotBrass>,<ore:blockBrass>,<ore:plateBrass>,<ore:gearBrass>,<ore:oreBrass>,<ore:dustBrass>] as crafttweaker.item.IIngredient[];
    unifyalloy(list_brass, brass_oredict);
    recipes.addShapeless(list_brass[0][6] * 3, [<ore:dustCopper>,<ore:dustCopper>,<ore:dustZinc>]);
    
# Bronze
    val list_bronze = [
    #    nugget                       ingot                       block                       plate                       gear                       ore  dust
        [<materialpart:bronze:nugget>,<materialpart:bronze:ingot>,<materialpart:bronze:block>,<materialpart:bronze:plate>,<materialpart:bronze:gear>,nope,<materialpart:bronze:dust>],
        [nope,                        <forestry:ingot_bronze>,    <forestry:resource_storage:3>,   nope,                  <forestry:gear_bronze>,    nope,nope],
        [<primal:bronze_nugget>, <primal:bronze_ingot>, <primal:metalblock:11>,        nope, nope,                nope, <primal:bronze_dust>],
        [teMat.withDamage(227),teMat.withDamage(163),<thermalfoundation:storage_alloy:3>,teMat.withDamage(355),teMat.withDamage(291),nope, teMat.withDamage(99)]
    ] as crafttweaker.item.IItemStack[][];
    var bronze_oredict = [<ore:nuggetBronze>,<ore:ingotBronze>,<ore:blockBronze>,<ore:plateBronze>,<ore:gearBronze>,<ore:oreBronze>,<ore:dustBronze>] as crafttweaker.item.IIngredient[];
    unifyalloy(list_bronze, bronze_oredict);
    recipes.addShapeless(list_bronze[0][6] * 4, [<ore:dustCopper>,<ore:dustCopper>,<ore:dustCopper>,<ore:dustTin>]);

# Copper
    val list_copper = [
        # Nugget [0]           Ingot [1]            Block [2]            Plate [3]             Gear [4]               Ore [5]              Dust [6]
        [ieMat.withDamage(20), ieMat,               ieSto,               ieMat.withDamage(30), ctMat.withDamage(91), ieOre.withDamage(0), ieMat.withDamage(9)],
        #[nope,                 nope,                nope,                nope,                 nope,                  nope,                <enderio:itemPowderIngot:3>],
        [nope,                 <abyssalcraft:copperingot>, nope,         nope,                 nope,                  <abyssalcraft:abycopore>, nope],
        [lvNug.withDamage(4),  lvIng.withDamage(4), lvSto.withDamage(4), lvPla.withDamage(4),  nope,                  lvOre.withDamage(4),      nope],
        #[nope,                <fp:ItemErze:2>,     <fp:erz_blocke:2>,   nope,                 nope,                  nope,                nope],
        [nope,                 <forestry:ingot_copper>, <forestry:resource_storage:1>, nope,     <forestry:gear_copper>, <forestry:resources:1>, nope],
        #[<embers:nuggetCopper>,<embers:ingotCopper>,<embers:blockCopper>,<embers:plateCopper>, nope,                 nope,                 nope],
        #[<esteemedinnovation:nugget>,<esteemedinnovation:ingot>,<esteemedinnovation:metal_storage_block>, nope,nope, nope,                 nope],
        [<primal:copper_nugget>,<primal:copper_ingot>, <primal:metalblock:10>,nope,             nope,                  nope,                 <primal:copper_dust>],
        #[<railcraft:nugget:2>, <railcraft:ingot:1>, <railcraft:generic>, nope,                nope,                  nope,                 nope],
        #[nope,                <rockhounding_chemistry:miscItems:25>,nope,nope,                nope,                  nope,                 <rockhounding_chemistry:chemicalDusts:17>],
        [teMat.withDamage(192), teMat.withDamage(128), teSto,            teMat.withDamage(320),teMat.withDamage(256), teOre,                teMat.withDamage(64)]
    ] as crafttweaker.item.IItemStack[][];
    var copper_oredict = [<ore:nuggetCopper>,<ore:ingotCopper>,<ore:blockCopper>,<ore:plateCopper>,<ore:gearCopper>,<ore:oreCopper>,<ore:dustCopper>] as crafttweaker.item.IIngredient[];
    unify(list_copper, copper_oredict);


# Constantan
    var list_constantan = [
        # Nugget [0]           Ingot [1]            Block [2]            Plate [3]             Gear [4]               Ore [5] Dust [6]
        [ieMat.withDamage(26), ieMat.withDamage(6), ieSto.withDamage(6), ieMat.withDamage(36), ctMat.withDamage(104), nope,   ieMat.withDamage(15)],
        [teMat.withDamage(228),teMat.withDamage(164),<thermalfoundation:storage_alloy:4>,teMat.withDamage(356),teMat.withDamage(292),nope,teMat.withDamage(100)]
    ] as crafttweaker.item.IItemStack[][];
    var constantan_oredict = [<ore:nuggetConstantan>,<ore:ingotConstantan>,<ore:blockConstantan>,<ore:plateConstantan>,<ore:gearConstantan>,<ore:oreConstantan>,<ore:dustConstantan>] as crafttweaker.item.IIngredient[];
    unifyalloy(list_constantan, constantan_oredict);
    recipes.addShapeless(list_constantan[0][6] * 2, [<ore:dustNickel>,<ore:dustCopper>]);
    #mods.tconstruct.Casting.removeTableRecipe(ctMat.withDamage(10), <liquid:constantan>, <tconstruct:cast_custom>);
    #mods.tconstruct.Casting.removeBasinRecipe(ctOre.withDamage());
    #mods.tconstruct.Casting.addTableRecipe(list_constantan[0][1], <liquid:constantan>*144, <tconstruct:cast_custom>, false);
    #mods.tconstruct.Casting.addBasinRecipe(list_constantan[0][2], <liquid:constantan>*1296);


# Iron
    var list_iron = [ 
    #    nugget                  ingot                    block                    plate                 gear                   ore                   dust
        [ieMat.withDamage(29),  <minecraft:iron_ingot>,  <minecraft:iron_block>,   ieMat.withDamage(39), ctMat.withDamage(174), <minecraft:iron_ore>, ieMat.withDamage(18)],
        [nope,              nope, nope, nope,         nope,        <abyssalcraft:abyiroore>,nope],
        #[<basemetals:iron_nugget>, nope, nope, <basemetals:iron_plate>, nope, nope, nope],
        #[nope, nope, nope, nope, nope, nope, <enderio:itemPowderIngot:1>],
        [nope, nope, nope, lvPla.withDamage(1), nope,        nope, lvDus.withDamage(1)],
        #[<embers:nuggetIron>,                 nope, nope, <embers:plateIron>,              nope,        nope],
        #[<esteemedinnovation:nugget:4>,       nope, nope, nope,         nope,        nope],
        [nope, nope, nope, <primal:iron_plate>, nope, nope, <primal:iron_dust>],
        #[<rockhounding_chemistry:miscItems:2>, nope, nope, nope,         nope,        nope,<rockhounding_chemistry:chemicalDusts:16>],
        [nope, nope, nope, teMat.withDamage(32), teMat.withDamage(24), nope, teMat]
    ] as crafttweaker.item.IItemStack[][];
    var iron_oredict = [<ore:nuggetIron>,<ore:ingotIron>,<ore:blockIron>,<ore:plateIron>,<ore:gearIron>,<ore:oreIron>,<ore:dustIron>] as crafttweaker.item.IIngredient[];
    unify(list_iron, iron_oredict);

# Lead
    var list_lead = [ 
        # Nugget [0]           Ingot [1]            Block [2]            Plate [3]             Gear [4]               Ore [5]              Dust [6]
        [ieMat.withDamage(22), ieMat.withDamage(2), ieSto.withDamage(2), ieMat.withDamage(32), ctMat.withDamage(175), ieOre.withDamage(2), ieMat.withDamage(11)],
        [<primal:lead_nugget>, <primal:lead_ingot>, <primal:metalblock:7>, <primal:lead_plate>,  nope,                  nope,                <primal:lead_dust>],
        #[nope,         <rockhounding_chemistry:miscItems:27>,nope,         nope,         nope,         nope,     <rockhounding_chemistry:chemicalDusts:19>],
        [teMat.withDamage(195),teMat.withDamage(131),     teSto.withDamage(3),   teMat.withDamage(323),teMat.withDamage(259),teOre.withDamage(3),   teMat.withDamage(67)]
    ] as crafttweaker.item.IItemStack[][];
    var lead_oredict = [<ore:nuggetLead>,<ore:ingotLead>,<ore:blockLead>,<ore:plateLead>,<ore:gearLead>,<ore:oreLead>,<ore:dustLead>] as crafttweaker.item.IIngredient[];
    unify(list_lead, lead_oredict);


# Nickel
    var list_nickel = [
        # Nugget [0]           Ingot [1]             Block [2]            Plate [3]             Gear [4]               Ore [5]              Dust [6]
        [ieMat.withDamage(24), ieMat.withDamage(4),  ieSto.withDamage(4), ieMat.withDamage(34), ctMat.withDamage(176), ieOre.withDamage(4), ieMat.withDamage(13)],
        #[nope,                nope,                 nope,                nope,                 nope,                  nope,                <rockhounding_chemistry:chemicalDusts:26>],
        [teMat.withDamage(197),teMat.withDamage(133),teSto.withDamage(5), teMat.withDamage(325),teMat.withDamage(261), teOre.withDamage(5), teMat.withDamage(69)]
    ] as crafttweaker.item.IItemStack[][];
    var nickel_oredict = [<ore:nuggetNickel>,<ore:ingotNickel>,<ore:blockNickel>,<ore:plateNickel>,<ore:gearNickel>,<ore:oreNickel>,<ore:dustNickel>] as crafttweaker.item.IIngredient[];
    unify(list_nickel, nickel_oredict);

# Platinum
    val list_platinum = [
    #    nugget                ingot                 block                plate                 gear                  ore                  dust
        [ctMat.withDamage(52), ctMat.withDamage(53), ctOr2.withDamage(4), ctMat.withDamage(51), ctMat.withDamage(25), ctOr2.withDamage(3), ctMat.withDamage(49)],
        [teMat.withDamage(198),teMat.withDamage(134),teSto.withDamage(6),teMat.withDamage(326),teMat.withDamage(262),teOre.withDamage(6), teMat.withDamage(70)],
        #[nope, nope, nope, nope, nope, nope, <rockhounding_chemistry:chemicalDusts:44>]
    ] as crafttweaker.item.IItemStack[][];
    var platinum_oredict = [<ore:nuggetPlatinum>,<ore:ingotPlatinum>,<ore:blockPlatinum>,<ore:platePlatinum>,<ore:gearPlatinum>,<ore:orePlatinum>,<ore:dustPlatinum>] as crafttweaker.item.IIngredient[];
    unify(list_platinum, platinum_oredict);

# Silver
    var list_silver = [
        # Nugget [0]           Ingot [1]            Block [2]            Plate [3]             Gear [4]               Ore [5]              Dust [6]
        [ieMat.withDamage(23), ieMat.withDamage(3), ieSto.withDamage(3), ieMat.withDamage(33), ctMat.withDamage(177), ieOre.withDamage(3), ieMat.withDamage(12)],
        [<primal:silver_nugget>,          <primal:silver_ingot>,           <primal:metalblock:6>,           <primal:silver_plate>,           nope,         nope,      <primal:silver_dust:*>],
        #[nope,         nope,         nope,         nope,         nope,         nope,      <rockhounding_chemistry:chemicalDusts:23>],
        [teMat.withDamage(194),teMat.withDamage(130),teSto.withDamage(2),   teMat.withDamage(322),teMat.withDamage(258),teOre.withDamage(2),    teMat.withDamage(66)]
    ] as crafttweaker.item.IItemStack[][];
    var silver_oredict = [<ore:nuggetSilver>,<ore:ingotSilver>,<ore:blockSilver>,<ore:plateSilver>,<ore:gearSilver>,<ore:oreSilver>,<ore:dustSilver>] as crafttweaker.item.IIngredient[];
    unify(list_silver, silver_oredict);


# Steel
    val list_steel = [
    #     nugget,              ingot,                block,               plate,                gear,                  ore,  dust,                 stick
        [ieMat.withDamage(28), ieMat.withDamage(8),  ieSto.withDamage(8), ieMat.withDamage(38), ctMat.withDamage(28),  nope, ieMat.withDamage(17), <immersiveengineering:material:2>],
        [lvNug.withDamage(6),  lvIng.withDamage(6),  lvSto.withDamage(6), lvPla.withDamage(6),  lvPla.withDamage(6),   nope, lvDus.withDamage(6),  <libvulpes:productrod:6>],
        [nope,                 <primal:steel_ingot>, <primal:metalblock:1>,<primal:steel_plate>, nope,                  nope, nope, nope],
        [teMat.withDamage(224),teMat.withDamage(160),<thermalfoundation:storage_alloy>,teMat.withDamage(352),teMat.withDamage(288),nope,teMat.withDamage(96), nope]
    ] as crafttweaker.item.IItemStack[][];
    val steel_oredict = [<ore:nuggetSteel>,<ore:ingotSteel>,<ore:blockSteel>,<ore:plateSteel>,<ore:gearSteel>,<ore:oreSteel>,<ore:dustSteel>] as crafttweaker.item.IIngredient[];
    unifyalloy(list_steel, steel_oredict);


# Tin
    val list_tin = [
    #    nugget,               ingot,                block,                plate,                gear                  ore                  dust
        [ctMat.withDamage(66), ctMat.withDamage(67), ctOre.withDamage(13), ctMat.withDamage(65), ctMat.withDamage(64), ctOr3.withDamage(3), ctMat.withDamage(63)],
        [nope,         <abyssalcraft:tiningot>,         nope,      nope,         nope,         <abyssalcraft:abytinore>, nope],
        #[nope,         nope,         nope,      nope,         nope,         nope,  <enderio:itemPowderIngot:4>],
        [nope,         <forestry:ingot_tin>,            <forestry:resource_storage:2>, nope,         <forestry:gear_tin>,              <forestry:resources:2>,   nope],
        #[nope,         nope,         nope,      nope,         nope,         nope,  <rockhounding_chemistry:chemicalDusts:18>],
        [lvNug.withDamage(5),     lvIng.withDamage(5),      lvSto.withDamage(5),         lvPla.withDamage(5),      nope,         lvOre.withDamage(5),       lvDus.withDamage(5)],
        [<primal:tin_nugget>,             <primal:tin_ingot>,              <primal:metalblock:9>,           <primal:tin_plate>,              nope,         nope,  <primal:tin_dust>],
        [teMat.withDamage(193),teMat.withDamage(129),teSto.withDamage(1),teMat.withDamage(321),teMat.withDamage(257),teOre.withDamage(1),teMat.withDamage(65)]
    ] as crafttweaker.item.IItemStack[][];
    var tin_oredict = [<ore:nuggetTin>,<ore:ingotTin>,<ore:blockTin>,<ore:plateTin>,<ore:gearTin>,<ore:oreTin>, <ore:dustTin>] as crafttweaker.item.IIngredient[];
    unify(list_tin, tin_oredict);
    mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:193>);
    mods.tconstruct.Casting.removeTableRecipe(<forestry:ingot_tin>);
    mods.tconstruct.Casting.removeBasinRecipe(<forestry:resource_storage:2>);
    mods.tconstruct.Casting.addTableRecipe(list_tin[0][1], <tconstruct:cast_custom:0>, <liquid:tin>, 144, false); # Ingot
    mods.tconstruct.Casting.addTableRecipe(list_tin[0][0], <tconstruct:cast_custom:1>, <liquid:tin>, 16, false); # Nugget
    mods.tconstruct.Casting.addTableRecipe(list_tin[0][3], <tconstruct:cast_custom:3>, <liquid:tin>, 144, false); # Plate
    mods.tconstruct.Casting.addTableRecipe(list_tin[0][4], <tconstruct:cast_custom:4>, <liquid:tin>, 576, false); # Gear
    mods.tconstruct.Casting.addBasinRecipe(list_tin[0][2], null, <liquid:tin>, 1296, false);




# Uranium
    val list_uranium = [
    #    nugget,               ingot,               block,               plate,                Gear                   ore                  dust
        [ieMat.withDamage(25), ieMat.withDamage(5), ieSto.withDamage(5), ieMat.withDamage(34), ctMat.withDamage(179), ieOre.withDamage(5), ieMat.withDamage(14)]
        #[nope,                 nope,                nope,                nope,                 nope,                 nope,               <rockhounding_chemistry:chemicalDusts:43>]
    ] as crafttweaker.item.IItemStack[][];
    var uranium_oredict = [<ore:nuggetUranium>,<ore:ingotUranium>,<ore:blockUranium>,<ore:plateUranium>,<ore:gearUranium>,<ore:oreUranium>,<ore:dustUranium>] as crafttweaker.item.IIngredient[];
    unify(list_uranium, uranium_oredict);



# Zinc
    val list_zinc = [
    #    nugget,               ingot,                block,               plate,                Gear                  ore                  dust
        [ctMat.withDamage(80), ctMat.withDamage(81), ctOr1.withDamage(9), ctMat.withDamage(79), ctMat.withDamage(78), ctOre.withDamage(9), ctMat.withDamage(77)],
        [<primal:zinc_nugget>,    <primal:zinc_ingot>,     <primal:metalblock:8>,     <primal:zinc_plate>,     nope, nope, <primal:zinc_dust>],
        #[nope, nope, nope, nope, nope, nope, <rockhounding_chemistry:chemicalDusts:20>]
    ] as crafttweaker.item.IItemStack[][];
    var zinc_oredict = [<ore:nuggetZinc>,<ore:ingotZinc>,<ore:blockZinc>,<ore:plateZinc>,<ore:gearZinc>,<ore:oreZinc>,<ore:dustZinc>] as crafttweaker.item.IIngredient[];
    unify(list_zinc, zinc_oredict);
    
    
    # Philosopher's Gold
    #furnace.addRecipe(ctMat.withDamage(127), <everlastingabilities:abilityTotem>, 1.0);
    recipes.addShapeless(ctMat.withDamage(126) * 9, [ctMat.withDamage(127)]);
    recipes.addShapeless(ctMat.withDamage(127), 
        [ctMat.withDamage(126),ctMat.withDamage(126),ctMat.withDamage(126),
         ctMat.withDamage(126),ctMat.withDamage(126),ctMat.withDamage(126),
         ctMat.withDamage(126),ctMat.withDamage(126),ctMat.withDamage(126)]);
