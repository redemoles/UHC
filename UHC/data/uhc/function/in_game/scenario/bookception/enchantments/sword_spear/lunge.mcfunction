
#> uhc:in_game/scenario/bookception/enchantments/sword_spear/lunge
#
# @within			uhc:in_game/scenario/bookception/kill
#
#
# @description		
#

execute store result score #random uhc.scenario.bookception run random value 1..2

execute if score #random uhc.scenario.bookception matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{stored_enchantments:{"minecraft:lunge":1}}}}
execute if score #random uhc.scenario.bookception matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{stored_enchantments:{"minecraft:lunge":2}}}}
