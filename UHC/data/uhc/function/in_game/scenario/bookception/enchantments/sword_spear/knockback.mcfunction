
#> uhc:in_game/scenario/bookception/enchantments/sword_spear/knockback
#
# @within			uhc:in_game/scenario/bookception/kill
#
#
# @description		
#

execute if score #random uhc.scenario.bookception matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{stored_enchantments:{"minecraft:sharpness":2}}}}
