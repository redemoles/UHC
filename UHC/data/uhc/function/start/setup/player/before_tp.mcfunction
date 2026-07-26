
#> uhc:start/setup/player/before_tp
#
# @within			uhc:start/main
#
#
# @description		Paramètres à appliquer à tous les joueurs
#

scoreboard objectives remove uhc.player.online
scoreboard objectives add uhc.player.online dummy
scoreboard players set @a[tag=uhc.player] uhc.player.online 1

## Random team au démarrage
execute if score #anonyme_team uhc.data.setup matches 1 if score #biome_paranoia uhc.scenario matches 2 run scoreboard players set #biome_paranoia uhc.scenario 1
execute if score #random_team_start uhc.data.setup matches 1 if score #random_team uhc.data.setup matches 1 run function uhc:pre_game/player_and_team/random_team/1_pot/main
execute if score #random_team_start uhc.data.setup matches 1 if score #random_team uhc.data.setup matches 2 run function uhc:pre_game/player_and_team/random_team/2_pots/main
execute if score #random_team_start uhc.data.setup matches 1 if score #random_team uhc.data.setup matches 3 run function uhc:pre_game/player_and_team/random_team/3_pots/main
# Joueurs sans équipe placés en spectateur
execute as @a if score @s uhc.id.team matches 091..092 run function uhc:pre_game/menu/selected/main/player/team/chosen/spec
execute as @a if score @s uhc.id.team matches 192 run function uhc:pre_game/menu/selected/main/player/team/chosen/spec
execute as @a if score @s uhc.id.team matches 292 run function uhc:pre_game/menu/selected/main/player/team/chosen/spec

## Effets & Inventaire
effect give @a minecraft:invisibility infinite 0 true
clear @a
experience set @a 0 levels
experience set @a 0 points
advancement revoke @a everything
recipe take @a *

tag @a[tag=uhc.player] add uhc.start.temp

## Nombre de vie
scoreboard players set @a[tag=uhc.spec] uhc.player.lives 0
scoreboard players operation @a[tag=uhc.player] uhc.player.lives = #lives uhc.data.setup
scoreboard players set @a uhc.player.death.temp 0
scoreboard players set @a uhc.timer.respawn 0

## Nombre de joueurs en jeu
execute store result score #player uhc.data.temp.inv if entity @a[tag=uhc.player]
scoreboard players operation #player uhc.data.temp = #player uhc.data.temp.inv
scoreboard players operation #player uhc.scenario.ironman = #player uhc.data.temp.inv
