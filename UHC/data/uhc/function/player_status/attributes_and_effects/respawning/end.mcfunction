
#> uhc:player_status/attributes_and_effects/respawning/end
#
# @within			uhc:in_game/player/spec/main
#
#
# @description		Donne les effets / gamemode aux specs
#

attribute @s minecraft:attack_damage modifier remove uhc.waiting_respawn
attribute @s minecraft:jump_strength modifier remove uhc.waiting_respawn
attribute @s minecraft:movement_speed modifier remove uhc.waiting_respawn

effect clear @s minecraft:resistance
execute unless score #playing_os_pve lobby.tc.data matches 1 run effect clear @s minecraft:invisibility

execute if score #game_progress uhc.game_progress matches 1.. run function uhc:player_status/attributes_and_effects/respawning/scenario
