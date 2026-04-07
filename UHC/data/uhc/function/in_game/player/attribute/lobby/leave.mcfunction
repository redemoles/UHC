
#> uhc:in_game/player/attribute/lobby/leave
#
# @within			uhc:in_game/player/attribute/default
#
#
# @description		Donne les effets / gamemode aux specs
#

attribute @s minecraft:attack_damage modifier remove uhc.effect.strength
attribute @s minecraft:attack_damage modifier remove uhc.waiting_respawn
attribute @s minecraft:attack_damage modifier remove uhc.lobby
attribute @s minecraft:attack_knockback modifier remove uhc.pvp_1_8
attribute @s minecraft:attack_speed modifier remove uhc.pvp.1_8
attribute @s minecraft:fall_damage_multiplier modifier remove uhc.lobby
execute if score #no_fall uhc.scenario matches 0 run attribute @s minecraft:fall_damage_multiplier modifier remove uhc.no_fall
execute if score #no_fall uhc.scenario matches 1 run attribute @s minecraft:fall_damage_multiplier modifier add uhc.no_fall -1.0 add_multiplied_total
attribute @s minecraft:jump_strength modifier remove uhc.waiting_respawn
attribute @s minecraft:jump_strength modifier remove uhc.waiting_start
attribute @s minecraft:knockback_resistance modifier remove uhc.block.knockback_resistance
attribute @s minecraft:max_health modifier remove lobby.tc.os_pve
execute if score #hastey_boys uhc.scenario matches 0 run attribute @s minecraft:mining_efficiency modifier remove uhc.hastey_boys
execute if score #hastey_boys uhc.scenario matches 1 run attribute @s minecraft:mining_efficiency modifier add uhc.hastey_boys 10 add_value
attribute @s minecraft:movement_speed modifier remove uhc.waiting_respawn
attribute @s minecraft:movement_speed modifier remove uhc.waiting_start
