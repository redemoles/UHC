
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
execute unless score #game_progress uhc.game_progress matches 1.. unless score #playing_os_pve lobby.tc.data matches 1 run effect clear @s minecraft:invisibility
execute if score #game_progress uhc.game_progress matches 1.. run effect clear @s minecraft:invisibility

execute if entity @s[tag=uhc.armor.malus] run attribute @s minecraft:movement_speed modifier add uhc.armor.malus -0.3 add_multiplied_base
execute if entity @s[tag=uhc.armor.malus] run attribute @s minecraft:jump_strength modifier add uhc.armor.malus -1.0 add_multiplied_base

execute if score #game_progress uhc.game_progress matches 1.. run function uhc:player_status/attributes_and_effects/respawning/scenario
