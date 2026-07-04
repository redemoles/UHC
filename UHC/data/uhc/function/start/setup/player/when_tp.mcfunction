
#> uhc:start/setup/player/when_tp
#
# @within			uhc:start/countdown/start
#
#
# @description		Configuration des joueurs
#

## Préparation des joueurs
title @s clear
effect clear @s
gamemode adventure @s[tag=uhc.player]
gamemode spectator @s[tag=uhc.spec]
execute as @s[tag=uhc.player] run function uhc:player_status/attributes_and_effects/uhc/start

## Starter
execute as @s[tag=uhc.player] run function uhc:start/item_starter/data

## Téléportation
# Spectateurs
execute as @s[tag=uhc.spec] in minecraft:overworld positioned 0 200 0 positioned over motion_blocking run tp @s ~3 ~1 ~-3 45.0 15.0

## Scenarios
execute as @s[tag=uhc.player] run function uhc:start/setup/scenario/player

scoreboard players set #tick_start uhc.data.temp 100
scoreboard players set #team uhc.id.team 0
