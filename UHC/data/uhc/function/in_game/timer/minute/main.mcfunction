
#> uhc:in_game/timer/minute/main
#
# @within			uhc:in_game/timer/second
#
#
# @description		Fonction minute de base en jeu
#

## Minuteur interne
execute if score #minutes uhc.data.temp matches 0.. run function uhc:in_game/timer/minute/internal

## Minuteur principal
scoreboard players remove #seconds uhc.data.temp 60
scoreboard players add #minutes uhc.data.temp 1
execute as @a[tag=uhc.player] run scoreboard players operation @s uhc.player.timer = #minutes uhc.data.temp

## Activation PvP
execute if score #pvp uhc.data.temp matches 0 in minecraft:overworld run gamerule minecraft:pvp true
execute if score #pvp uhc.data.temp matches 0 in minecraft:the_nether run gamerule minecraft:pvp true
execute if score #pvp uhc.data.temp matches 0 in minecraft:the_end run gamerule minecraft:pvp true

## Réduction de la worldborder
execute if score #shrink_1_time_left uhc.data.temp matches 0 run function uhc:in_game/timer/border/shrink/1
execute if score #shrink_2_time_left uhc.data.temp matches 0 run function uhc:in_game/timer/border/shrink/2
execute if score #shrink_3_time_left uhc.data.temp matches 0 run function uhc:in_game/timer/border/shrink/3
execute if score #shrink_1_timer_end uhc.data.temp matches 0 in minecraft:overworld run gamerule minecraft:spawn_monsters false
execute if score #shrink_1_timer_end uhc.data.temp matches 0 in minecraft:the_nether run gamerule minecraft:spawn_monsters false
execute if score #shrink_1_timer_end uhc.data.temp matches 0 in minecraft:the_end run gamerule minecraft:spawn_monsters false

## Minuteur de modes de jeu
execute if score #bhc uhc.gamemode matches 1 in uhc:lobby run function bhc:in_game/timer/minute
function #plugin:in_game/timer/minute

## Scénarios
execute if score #blood_cycle uhc.scenario matches 1 run function uhc:in_game/scenario/blood_cycle/cooldown
execute if score #sky_high uhc.scenario matches 1 if score #sky_high uhc.data.temp matches ..0 if score #sky_high_ender_pearl uhc.data.temp matches 0 if score #sky_high_gift uhc.data.temp matches 1.. run function uhc:in_game/scenario/sky_high/ender_pearl

## Réduction de vie automatique
execute if score #lives_start uhc.player.lives matches 4.. if score #3_lives_left uhc.data.temp matches 0 run function uhc:translation/in_game/timer_minute_3_lives_left
execute if score #3_lives_left uhc.data.setup matches 1.. if score #3_lives_left uhc.data.temp matches 0 run scoreboard players set #lives uhc.data.temp 3
execute if score #3_lives_left uhc.data.temp matches 0 if entity @p[scores={uhc.player.lives=4..}] as @e[type=minecraft:marker,tag=UHC] run function uhc:in_game/player/lives_remove/drop_to_3

execute if score #lives_start uhc.player.lives matches 3.. if score #2_lives_left uhc.data.temp matches 0 run function uhc:translation/in_game/timer_minute_2_lives_left
execute if score #2_lives_left uhc.data.setup matches 1.. if score #2_lives_left uhc.data.temp matches 0 run scoreboard players set #lives uhc.data.temp 2
execute if score #2_lives_left uhc.data.temp matches 0 if entity @p[scores={uhc.player.lives=3}] as @e[type=minecraft:marker,tag=UHC] run function uhc:in_game/player/lives_remove/drop_to_2

execute if score #lives_start uhc.player.lives matches 2.. if score #1_life_left uhc.data.temp matches 0 run function uhc:translation/in_game/timer_minute_1_life_left
execute if score #1_life_left uhc.data.setup matches 1.. if score #1_life_left uhc.data.temp matches 0 run scoreboard players set #lives uhc.data.temp 1
execute if score #1_life_left uhc.data.temp matches 0 if entity @p[scores={uhc.player.lives=2}] as @e[type=minecraft:marker,tag=UHC] run function uhc:in_game/player/lives_remove/drop_to_1

## Texte alerte
function uhc:in_game/timer/hotbar/cooldown/text_tellraw
