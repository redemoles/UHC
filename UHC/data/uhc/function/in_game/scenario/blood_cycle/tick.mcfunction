
#> uhc:in_game/scenario/blood_cycle/tick
#
# @within			uhc:in_game/player/tick
#
#
# @description		
#

attribute @s minecraft:knockback_resistance modifier add uhc:temp.knockback_resistance 1 add_value
execute if score #random uhc.scenario.blood_cycle matches 1 if score @s uhc.player.mined.temp.coal matches 1.. run damage @s 1 minecraft:mob_attack by @n[type=minecraft:marker,tag=uhc.scenario.blood_cycle]
execute if score #random uhc.scenario.blood_cycle matches 1 if score @s uhc.player.mined.temp.coal_deepslate matches 1.. run damage @s 1 minecraft:mob_attack by @n[type=minecraft:marker,tag=uhc.scenario.blood_cycle]
execute if score #random uhc.scenario.blood_cycle matches 2 if score @s uhc.player.mined.temp.iron matches 1.. run damage @s 1 minecraft:mob_attack by @n[type=minecraft:marker,tag=uhc.scenario.blood_cycle]
execute if score #random uhc.scenario.blood_cycle matches 2 if score @s uhc.player.mined.temp.iron_deepslate matches 1.. run damage @s 1 minecraft:mob_attack by @n[type=minecraft:marker,tag=uhc.scenario.blood_cycle]
execute if score #random uhc.scenario.blood_cycle matches 3 if score @s uhc.player.mined.temp.gold matches 1.. run damage @s 1 minecraft:mob_attack by @n[type=minecraft:marker,tag=uhc.scenario.blood_cycle]
execute if score #random uhc.scenario.blood_cycle matches 3 if score @s uhc.player.mined.temp.gold_deepslate matches 1.. run damage @s 1 minecraft:mob_attack by @n[type=minecraft:marker,tag=uhc.scenario.blood_cycle]
execute if score #random uhc.scenario.blood_cycle matches 4 if score @s uhc.player.mined.temp.lapis matches 1.. run damage @s 1 minecraft:mob_attack by @n[type=minecraft:marker,tag=uhc.scenario.blood_cycle]
execute if score #random uhc.scenario.blood_cycle matches 4 if score @s uhc.player.mined.temp.lapis_deepslate matches 1.. run damage @s 1 minecraft:mob_attack by @n[type=minecraft:marker,tag=uhc.scenario.blood_cycle]
execute if score #random uhc.scenario.blood_cycle matches 5 if score @s uhc.player.mined.temp.redstone matches 1.. run damage @s 1 minecraft:mob_attack by @n[type=minecraft:marker,tag=uhc.scenario.blood_cycle]
execute if score #random uhc.scenario.blood_cycle matches 5 if score @s uhc.player.mined.temp.redstone_deepslate matches 1.. run damage @s 1 minecraft:mob_attack by @n[type=minecraft:marker,tag=uhc.scenario.blood_cycle]
execute if score #random uhc.scenario.blood_cycle matches 6 if score @s uhc.player.mined.temp.diamond matches 1.. run damage @s 1 minecraft:mob_attack by @n[type=minecraft:marker,tag=uhc.scenario.blood_cycle]
execute if score #random uhc.scenario.blood_cycle matches 6 if score @s uhc.player.mined.temp.diamond_deepslate matches 1.. run damage @s 1 minecraft:mob_attack by @n[type=minecraft:marker,tag=uhc.scenario.blood_cycle]
attribute @s minecraft:knockback_resistance modifier remove uhc:temp.knockback_resistance
