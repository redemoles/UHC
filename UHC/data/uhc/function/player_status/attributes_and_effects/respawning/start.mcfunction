
#> uhc:player_status/attributes_and_effects/respawning/start
#
# @within			uhc:in_game/player/spec/main
#
#
# @description		Donne les effets / gamemode aux specs
#

attribute @s minecraft:attack_damage modifier add uhc.waiting_respawn -1.0 add_multiplied_total
attribute @s minecraft:jump_strength modifier add uhc.waiting_respawn -1.0 add_multiplied_total
attribute @s minecraft:movement_speed modifier add uhc.waiting_respawn -1.0 add_multiplied_total

effect give @s minecraft:resistance infinite 4 true
effect give @s minecraft:invisibility infinite 0 true
