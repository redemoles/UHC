
#> uhc:pre_game/player_and_team/new_player
#
# @within			uhc:pre_game/timer/tick
#
#
# @description		Formation des équipes et effets à donner au spawn
#

## Mise au lobby des joueurs
tag @s remove uhc.player
tag @s remove uhc.player.dead
tag @s remove uhc.player.start_in_the_sky
tag @s remove test
tag @s remove uhc.random_team.in_a_team
tag @s add uhc.spec
tag @s remove uhc.scenario.biome_paranoia.team
tag @s remove uhc.scenario.sound_paranoia.on

tag @s remove uhc.spec_info.blood_diamond
tag @s remove uhc.spec_info.pve
tag @s remove uhc.spec_info.pvp

execute if score #lobby lobby.structure.data matches 00..09 in uhc:lobby run tp @s 0 65 0 0 0
execute if score #lobby lobby.structure.data matches 10..19 in uhc:lobby run tp @s 0 65 0 0 0
team join 099 @s[tag=!uhc.host]
team join 099.host @s[tag=uhc.host]
gamemode adventure @s
clear @s
title @s reset
recipe take @s *
scoreboard players operation @s uhc.player.lang = #language uhc.player.lang
execute unless score @s uhc.player.lang matches 1.. run scoreboard players set @s uhc.player.lang 051407
scoreboard players set @s uhc.id.random_team 0

# Réinitialisation des effets, tags et triggers
function uhc:pre_game/player_and_team/reset_effects
function uhc:pre_game/player_and_team/reset_tags
scoreboard players reset @s uhc.id.spawn_check
scoreboard players reset @s uhc.info.me
scoreboard players reset @s uhc.info.team
scoreboard players reset @s uhc.info.team.temp

# → L'ordre des commandes doit rester comme ça
execute as @s[tag=uhc.host] run function uhc:pre_game/menu/reset/host
execute as @s[tag=!uhc.host] run function uhc:pre_game/menu/reset/player
scoreboard players set @s uhc.player.online 1

## Réinitialisation tags de tous les scénarios
# Best PvE
tag @s remove uhc.scenario.best_pve

advancement revoke @s everything
experience set @s 0 levels
experience set @s 0 points

tag @s add lobby.temp
attribute @s minecraft:max_health modifier add lobby.new_player -100 add_value
schedule function uhc:pre_game/player_and_team/new_player_heal 2t
