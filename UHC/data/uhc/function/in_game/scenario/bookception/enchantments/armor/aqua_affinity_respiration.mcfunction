
#> uhc:in_game/scenario/bookception/enchantments/armor/aqua_affinity_respiration
#
# @within			uhc:in_game/scenario/bookception/kill
#
#
# @description		
#

execute store result score #random uhc.scenario.bookception run random value 1..2

execute if score #random uhc.scenario.bookception matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{stored_enchantments:{"minecraft:aqua_affinity":1}}}}
execute if score #random uhc.scenario.bookception matches 2 run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{stored_enchantments:{"minecraft:respiration":3}}}}
