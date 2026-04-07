
#> uhc:in_game/player/attribute/lobby/enter
#
# @within			uhc:in_game/player/attribute/default
#
#
# @description		Donne les effets / gamemode aux specs
#

attribute @s minecraft:attack_damage modifier remove uhc.effect.strength
attribute @s minecraft:attack_damage modifier remove uhc.waiting_respawn
attribute @s minecraft:attack_damage modifier add uhc.lobby -1.0 add_multiplied_total
attribute @s minecraft:attack_knockback modifier remove uhc.pvp_1_8
attribute @s minecraft:attack_speed modifier remove uhc.pvp.1_8
attribute @s minecraft:fall_damage_multiplier modifier add uhc.lobby -1.0 add_multiplied_total
attribute @s minecraft:fall_damage_multiplier modifier remove uhc.no_fall

attribute @s minecraft:jump_strength modifier remove uhc.waiting_respawn
attribute @s minecraft:jump_strength modifier remove uhc.waiting_start
attribute @s minecraft:knockback_resistance modifier remove uhc.block.knockback_resistance
attribute @s minecraft:max_health modifier remove lobby.tc.os_pve
attribute @s minecraft:mining_efficiency modifier remove uhc.hastey_boys

attribute @s minecraft:movement_speed modifier remove uhc.waiting_respawn
attribute @s minecraft:movement_speed modifier remove uhc.waiting_start

effect give @s minecraft:instant_health 1 9 true
effect give @s minecraft:saturation infinite 0 true
effect give @s minecraft:fire_resistance infinite 0 true
effect give @s minecraft:resistance infinite 4 true
effect give @s minecraft:instant_health infinite 1 true
