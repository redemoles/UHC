
#> uhc:in_game/scenario/bats/tick
#
# @within			uhc:in_game/scenario/_advancement/player_kill_bat
#
#
# @description		Probabilité Bats
#

execute store result score #roll uhc.scenario.bats run random value 1..20

# Récompense
execute if score #roll uhc.scenario.bats matches 2..20 run return run give @s minecraft:golden_apple

# Mort
attribute @s minecraft:knockback_resistance modifier add uhc:temp.knockback_resistance 1 add_value
damage @s 200 minecraft:mob_attack by @n[type=minecraft:marker,tag=scenario.bats]
attribute @s minecraft:knockback_resistance modifier remove uhc:temp.knockback_resistance
