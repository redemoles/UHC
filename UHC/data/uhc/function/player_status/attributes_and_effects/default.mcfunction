
#> uhc:player_status/attributes_and_effects/default
#
# @within			uhc:in_game/player/spec/main
#
#
# @description		Donne les effets / gamemode aux specs
#

attribute @s minecraft:attack_damage base set 1
attribute @s minecraft:attack_knockback base set 0
attribute @s minecraft:attack_speed base set 4
attribute @s minecraft:fall_damage_multiplier base set 1.0
attribute @s minecraft:jump_strength base set 0.42
attribute @s minecraft:knockback_resistance base set 0
attribute @s minecraft:max_absorption base set 0
attribute @s minecraft:max_health base set 20
attribute @s minecraft:movement_speed base set 0.10000000149011612
attribute @s minecraft:scale base set 1.0
attribute @s minecraft:submerged_mining_speed base set 0.2

attribute @s minecraft:attack_damage modifier remove uhc.effect.strength
attribute @s minecraft:attack_damage modifier remove uhc.waiting_respawn
attribute @s minecraft:attack_knockback modifier remove uhc.pvp_1_8
attribute @s minecraft:attack_speed modifier remove uhc.pvp.1_8
attribute @s minecraft:jump_strength modifier remove uhc.waiting_respawn
attribute @s minecraft:jump_strength modifier remove uhc.waiting_start
attribute @s minecraft:knockback_resistance modifier remove uhc.block.knockback_resistance
attribute @s minecraft:max_health modifier remove lobby.tc.os_pve
attribute @s minecraft:movement_speed modifier remove uhc.waiting_respawn
attribute @s minecraft:movement_speed modifier remove uhc.waiting_start
