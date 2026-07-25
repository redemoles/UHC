
#> uhc:in_game/player/spec/new_player
#
# @within			uhc:in_game/player/spec/main
#
#
# @description		Donne les effets / gamemode aux specs
#

team join 099 @s[tag=!uhc.host]
team join 099.host @s[tag=uhc.host]
clear @s
effect clear @s
scoreboard players operation @s uhc.player.lang = #language uhc.player.lang
execute unless score @s uhc.player.lang matches 1.. run scoreboard players set @s uhc.player.lang 051407
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

scoreboard players set @s uhc.player.damage_dealt.total 0
scoreboard players set @s uhc.player.damage_dealt.pvp 0
scoreboard players set @s uhc.player.damage_dealt.pve 0
scoreboard players set @s uhc.player.damage_taken.total 0
scoreboard players set @s uhc.player.damage_taken.pve 0
scoreboard players set @s uhc.player.damage_taken.pvp 0

## Réinitialisation tags
# Lobby
function uhc:player_status/tags/reset

function uhc:in_game/player/spec/main
