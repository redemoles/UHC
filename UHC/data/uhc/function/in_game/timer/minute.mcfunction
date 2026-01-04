
#> uhc:in_game/timer/minute
#
# @within			uhc:in_game/timer/second
#
#
# @description		Fonction minute de base en jeu
#

## Minuteur
scoreboard players remove #seconds uhc.data.temp 60
scoreboard players add #minutes uhc.data.temp 1

## Minuteur interne
scoreboard players remove #pve uhc.data.temp 1
scoreboard players remove #pvp uhc.data.temp 1
scoreboard players remove #shrink_1_time_left uhc.data.temp 1
scoreboard players remove #shrink_2_time_left uhc.data.temp 1
scoreboard players remove #shrink_3_time_left uhc.data.temp 1
scoreboard players remove #shrink_1_timer_end uhc.data.temp 1
scoreboard players remove #shrink_2_timer_end uhc.data.temp 1
scoreboard players remove #shrink_3_timer_end uhc.data.temp 1
scoreboard players remove #live_3 uhc.data.temp 1
scoreboard players remove #live_2 uhc.data.temp 1
scoreboard players remove #live_1 uhc.data.temp 1
scoreboard players remove #map_height_timer uhc.data.temp 1
execute as @a[tag=uhc.player] run scoreboard players operation @s uhc.player.timer = #minutes uhc.data.temp

## Activation PvP
execute if score #pvp uhc.data.temp matches 0 in minecraft:overworld run gamerule minecraft:pvp true
execute if score #pvp uhc.data.temp matches 0 in minecraft:the_nether run gamerule minecraft:pvp true
execute if score #pvp uhc.data.temp matches 0 in minecraft:the_end run gamerule minecraft:pvp true

## Réduction de la worldborder
execute if score #shrink_1_time_left uhc.data.temp matches 0 run function uhc:in_game/timer/border/shrink/1
execute if score #shrink_2_time_left uhc.data.temp matches 0 run function uhc:in_game/timer/border/shrink/2
execute if score #shrink_3_time_left uhc.data.temp matches 0 run function uhc:in_game/timer/border/shrink/3
execute if score #shrink_1_timer_end uhc.data.temp matches 0 run gamerule minecraft:spawn_mobs false

## Minuteur de modes de jeu
execute if score #bhc uhc.gamemode matches 1 in uhc:lobby run function bhc:timer/minute
execute if score #nzl uhc.gamemode matches 1 run function nzl:timer/minute

## Réduction de vie automatique
# Msg FRA
execute if score #lives_start uhc.player.lives matches 3.. if score #live_2 uhc.data.temp matches 0 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Vies maximum ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" ❤❤❤ ","color":"#3FE7FF","bold":false},{"text":"→","color":"#FFFFFF","bold":false},{"text":" ❤❤","color":"#FFE73F","bold":false}]
execute if score #lives_start uhc.player.lives matches 2.. if score #live_1 uhc.data.temp matches 0 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Vies maximum ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" ❤❤ ","color":"#FFE73F","bold":false},{"text":"→","color":"#FFFFFF","bold":false},{"text":" ❤","color":"#E73F3F","bold":false}]

# Msg ENG
execute if score #lives_start uhc.player.lives matches 3.. if score #live_2 uhc.data.temp matches 0 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Maximum lives ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" ❤❤❤ ","color":"#3FE7FF","bold":false},{"text":"→","color":"#FFFFFF","bold":false},{"text":" ❤❤","color":"#FFE73F","bold":false}]
execute if score #lives_start uhc.player.lives matches 2.. if score #live_1 uhc.data.temp matches 0 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Maximum lives ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" ❤❤ ","color":"#FFE73F","bold":false},{"text":"→","color":"#FFFFFF","bold":false},{"text":" ❤","color":"#E73F3F","bold":false}]

execute if score #live_2 uhc.data.temp matches 0 run scoreboard players set #lives uhc.player.lives 2
execute if score #live_1 uhc.data.temp matches 0 run scoreboard players set #lives uhc.player.lives 1

execute if score #live_2 uhc.data.temp matches 0 if entity @p[scores={uhc.player.lives=3}] as @e[type=marker,tag=UHC] run function uhc:in_game/player/lives_remove/drop_to_2
execute if score #live_1 uhc.data.temp matches 0 if entity @p[scores={uhc.player.lives=2}] as @e[type=marker,tag=UHC] run function uhc:in_game/player/lives_remove/drop_to_1

## Minuteur de scénarios
execute if score #blood_cycle uhc.scenario matches 1 run function uhc:in_game/scenario/blood_cycle/cooldown

## Texte alerte
function uhc:in_game/timer/hotbar/cooldown/text_tellraw with storage uhc:temp
