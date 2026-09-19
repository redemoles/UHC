
#> uhc:in_game/scenario/bookception/enchantments/crossbow/quick_charge
#
# @within			uhc:in_game/scenario/bookception/kill
#
#
# @description		
#

execute store result score #random uhc.scenario.bookception run random value 2..3

execute if score #random uhc.scenario.bookception matches 2 run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{stored_enchantments:{"minecraft:quick_charge":2}}}}
execute if score #random uhc.scenario.bookception matches 3 run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{stored_enchantments:{"minecraft:quick_charge":3}}}}
