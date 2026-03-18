
#> uhc:in_game/timer/second
#
# @within			uhc:tick
#
#
# @description		Fonction seconde de base en jeu
#

scoreboard players set #tick uhc.data.temp 0
scoreboard players add #seconds uhc.data.temp 1
scoreboard players set #sec_cooldown uhc.data.temp 60
scoreboard players operation #sec_cooldown uhc.data.temp -= #seconds uhc.data.temp
execute if score #seconds uhc.data.temp matches 60 run function uhc:in_game/timer/minute/main
execute if score #game_progress uhc.game_progress matches 2.. run scoreboard players add #seconds uhc.game_progress 1

execute if score #seconds uhc.data.temp matches 00 run data modify storage uhc:temp hotbar.seconds set value "0"
execute if score #seconds uhc.data.temp matches 10 run data modify storage uhc:temp hotbar.seconds set value ""

execute if score #sec_cooldown uhc.data.temp matches 00..09 run data modify storage uhc:temp hotbar.sec_cooldown set value "0"
execute if score #sec_cooldown uhc.data.temp matches 10..59 run data modify storage uhc:temp hotbar.sec_cooldown set value ""

## Compteur avant kill items
execute as @e[type=minecraft:item] run function uhc:in_game/entity/item/second

## Kill Bats
execute unless score #bats uhc.scenario matches 1 as @e[type=minecraft:bat] run tp 0 -1000 0

## Nerf Happy Ghast
execute as @e[type=minecraft:happy_ghast] run function uhc:in_game/entity/happy_ghast/

## Paramètres
# Absorption
execute as @a[scores={uhc.timer.absorption=1}] run attribute @s minecraft:max_absorption base set 0
scoreboard players remove @a[scores={uhc.timer.absorption=1..}] uhc.timer.absorption 1

# Démarrage dans le ciel
execute if score #start_in_sky uhc.data.setup matches 1 if score #minutes uhc.data.temp matches 0 if score #seconds uhc.data.temp matches 30 positioned 0 179 0 run fill ~-5 ~ ~-5 ~5 ~ ~5 minecraft:air
execute if score #minutes uhc.data.temp matches 0 if score #seconds uhc.data.temp matches 30 run function uhc:in_game/team/collision/always

## Scénarios
# Sound Paranoia
execute if score #sound_paranoia uhc.scenario matches 1 as @a[tag=uhc.player] at @s run function uhc:in_game/scenario/sound_paranoia/cooldown

## Autres mode de jeu
execute if score #minutes uhc.data.temp matches 0.. if score #nzl uhc.gamemode matches 1 run function nzl:timer/second
execute if score #minutes uhc.data.temp matches 0.. if score #bhc uhc.gamemode matches 1 in uhc:lobby run function bhc:timer/second

## Alertes sonores
# Border en cours de réduction
execute if score #tick uhc.data.temp matches 0 if score #shrink_1_time_left uhc.data.temp matches ..0 run function uhc:in_game/timer/border/alert/main

## Alertes Hotbar
execute if score #hotbar_cooldown uhc.data.temp matches 0.. run scoreboard players remove #hotbar_cooldown uhc.data.temp 1

execute if score #start_delay uhc.data.setup matches 1 if score #sec_cooldown uhc.data.temp matches 30 run scoreboard players set #hotbar_cooldown uhc.data.temp 32

execute if score #pve uhc.data.temp matches 5 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #pve uhc.data.temp matches 2 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #pve uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #pve uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 30 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #pve uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 10 run scoreboard players set #hotbar_cooldown uhc.data.temp 13

execute unless score #bhc bhc.scenario matches 99 if score #pvp uhc.data.temp matches 5 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 5
execute if score #pvp uhc.data.temp matches 2 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #pvp uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #pvp uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 30 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #pvp uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 10 run scoreboard players set #hotbar_cooldown uhc.data.temp 13

execute if score #shrink_1_time_left uhc.data.temp matches 5 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #shrink_1_time_left uhc.data.temp matches 2 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #shrink_1_time_left uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #shrink_1_time_left uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 30 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute unless score #bhc bhc.scenario matches 99 if score #shrink_1_time_left uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 10 run scoreboard players set #hotbar_cooldown uhc.data.temp 13
execute if score #bhc bhc.scenario matches 99 if score #shrink_1_time_left uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 10 run scoreboard players set #hotbar_cooldown uhc.data.temp 13

execute if score #shrink_2_time_left uhc.data.temp matches 5 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #shrink_2_time_left uhc.data.temp matches 2 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #shrink_2_time_left uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #shrink_2_time_left uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 30 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #shrink_2_time_left uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 10 run scoreboard players set #hotbar_cooldown uhc.data.temp 13

execute if score #shrink_3_time_left uhc.data.temp matches 5 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #shrink_3_time_left uhc.data.temp matches 2 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #shrink_3_time_left uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 0 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #shrink_3_time_left uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 30 run scoreboard players set #hotbar_cooldown uhc.data.temp 4
execute if score #shrink_3_time_left uhc.data.temp matches 1 if score #sec_cooldown uhc.data.temp matches 10 run scoreboard players set #hotbar_cooldown uhc.data.temp 13

# Données Worldborder
schedule function uhc:in_game/timer/border/schedule_1s 1s
scoreboard players operation #border_size_temp uhc.data.temp = #border_size uhc.data.temp
