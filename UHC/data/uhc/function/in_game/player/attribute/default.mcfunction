
#> uhc:in_game/player/attribute/default
#
# @within			uhc:in_game/player/spec/
#
#
# @description		Donne les effets / gamemode aux specs
#

attribute @s minecraft:attack_knockback base set 0
attribute @s minecraft:attack_damage base set 1
attribute @s minecraft:attack_speed base set 4
attribute @s minecraft:fall_damage_multiplier base set 1.0
attribute @s minecraft:jump_strength base set 0.42
attribute @s minecraft:knockback_resistance base set 0
attribute @s minecraft:max_absorption base set 0
attribute @s minecraft:max_health base set 20
attribute @s minecraft:movement_speed base set 0.10000000149011612
attribute @s minecraft:scale base set 1.0
attribute @s minecraft:submerged_mining_speed base set 0.2

# En jeu
execute if score #game_progress uhc.game_progress matches 1.. unless score #tick_start uhc.data.temp matches 0..200 run return run function uhc:in_game/player/attribute/lobby/leave
# Au lobby
function uhc:in_game/player/attribute/lobby/enter
