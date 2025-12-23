
#> uhc:in_game/player/spec/new_player
#
# @within			uhc:in_game/player/spec/
#
#
# @description		Donne les effets / gamemode aux specs
#

team join 099 @s[tag=!uhc.host]
team join 099.host @s[tag=uhc.host]
clear @s
effect clear @s
execute unless score @s uhc.player.lang matches 1.. run scoreboard players set @s uhc.player.lang 061801
tag @s remove uhc.player.dead
title @s reset

## Triggers
execute if score #player uhc.scenario.ironman matches 1.. run scoreboard players enable @s uhc.ironman.list
scoreboard players enable @s uhc.night_vision
execute if score #best_pve uhc.scenario matches 1 run scoreboard players enable @s uhc.best_pve.list

scoreboard players reset @s uhc.id.spawn_check
scoreboard players reset @s uhc.info.me
execute if score #game_progress uhc.game_progress matches 1 run scoreboard players reset @s uhc.info.team
scoreboard players reset @s uhc.info.team.temp

## Scoreboards
scoreboard players set @s uhc.player.mined.coal 0
scoreboard players set @s uhc.player.mined.copper 0
scoreboard players set @s uhc.player.mined.iron 0
scoreboard players set @s uhc.player.mined.gold 0
scoreboard players set @s uhc.player.mined.lapis 0
scoreboard players set @s uhc.player.mined.redstone 0
scoreboard players set @s uhc.player.mined.diamond 0

scoreboard players set @s uhc.player.damage_dealt.pvp 0
scoreboard players set @s uhc.player.damage_taken 0
scoreboard players set @s uhc.player.damage_taken.pve 0
scoreboard players set @s uhc.player.damage_taken.pvp 0

## Réinitialisation tags
# Divers
tag @s remove uhc.fire_flame
# Lobby
function uhc:pre_game/player_and_team/reset_tags
# Scénarios
tag @s remove uhc.scenario.best_pve
# Mode de jeu
function mls:start/reset_tags
function nzl:start/reset_tags
