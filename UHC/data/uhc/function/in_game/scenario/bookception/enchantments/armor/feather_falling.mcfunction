
#> uhc:in_game/scenario/bookception/enchantments/armor/feather_falling
#
# @within			uhc:in_game/scenario/bookception/kill
#
#
# @description		
#

execute store result score #random uhc.scenario.bookception run random value 2..4

execute if score #random uhc.scenario.bookception matches 2 run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{stored_enchantments:{"minecraft:feather_falling":2}}}}
execute if score #random uhc.scenario.bookception matches 3 run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{stored_enchantments:{"minecraft:feather_falling":3}}}}
execute if score #random uhc.scenario.bookception matches 4 run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{stored_enchantments:{"minecraft:feather_falling":4}}}}
