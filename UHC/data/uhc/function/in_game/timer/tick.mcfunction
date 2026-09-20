
#> uhc:in_game/timer/tick
#
# @within			uhc:tick
#
#
# @description		Fonction tick de base en jeu
#

# Tick
execute unless score #minutes uhc.data.temp matches -1 if entity @p[tag=test] run function uhc:in_game/player/test
execute unless score #pause uhc.data.temp matches 1 run scoreboard players add #tick uhc.data.temp 1
# Chronomètre démarrage
execute if score #minutes uhc.data.temp matches -1 run function uhc:start/countdown/start
execute if score #minutes uhc.data.temp matches -1 run return fail
# Secondes
execute if score #tick uhc.data.temp matches 20 run function uhc:in_game/timer/second

## TP
# TP un joueur au sol après spawn ou respawn
execute as @a[scores={uhc.player.tp=1}] at @s positioned over motion_blocking run tp @s ~ ~ ~
scoreboard players set @a uhc.player.tp 0

## Hotbar
function uhc:in_game/timer/hotbar/root

## Modifications de données d'entités
# Réduction des dégâts des flèches
execute if score #custom_arrow uhc.data.setup matches 1.. as @e[type=minecraft:arrow] run function uhc:in_game/entity/arrow/root
execute unless score #custom_arrow uhc.data.setup matches 1.. as @e[type=minecraft:arrow,tag=!uhc.checked] run function uhc:in_game/entity/arrow/basic
# Items
execute as @e[type=minecraft:item,tag=!uhc.checked] run function uhc:in_game/entity/item/tick

## Scenarios
function uhc:in_game/scenario/tick

## Réduction de vie automatique
execute if score #3_lives_left uhc.data.temp matches ..0 if entity @p[scores={uhc.player.lives=4..}] as @e[type=minecraft:marker,tag=UHC] run function uhc:in_game/player/lives_remove/drop_to_3
execute if score #2_lives_left uhc.data.temp matches ..0 if entity @p[scores={uhc.player.lives=3}] as @e[type=minecraft:marker,tag=UHC] run function uhc:in_game/player/lives_remove/drop_to_2
execute if score #1_life_left uhc.data.temp matches ..0 if entity @p[scores={uhc.player.lives=2}] as @e[type=minecraft:marker,tag=UHC] run function uhc:in_game/player/lives_remove/drop_to_1

## Joueurs
# Détection d'un joueur mort
execute as @e[type=minecraft:player,scores={uhc.player.death.temp=1}] run function uhc:in_game/player/death/main
# Effets, Respawn, Connexion d'un joueur externe, Scenarios
execute as @a run function uhc:in_game/player/tick

## Annonce de mort
execute if score #death_message uhc.data.setup matches 6 store result score #death_message uhc.data.temp run random value 1..5
execute unless predicate uhc:scenario/silent_night/night_time if score #death_message uhc.data.temp matches 5 unless score #death_message uhc.data.setup matches 5..6 run scoreboard players operation #death_message uhc.data.temp = #death_message uhc.data.setup
execute if predicate uhc:scenario/silent_night/night_time run scoreboard players set #death_message uhc.data.temp 5

## End dimension
# Détection entrée/sortie de l'end et respawn d'un joueur mort
execute in minecraft:the_end run scoreboard players set @a[distance=0..] uhc.world.end 1
execute in minecraft:overworld as @a[distance=0..,scores={uhc.world.end=1}] run function uhc:in_game/tp/end_exit

## Force commands
# Force Meet-up
execute if entity @p[scores={uhc.meetup.activate=1}] in minecraft:overworld run function uhc:in_game/force_command/meetup
# Force Endgame
execute if entity @p[scores={uhc.game_progress=1}] in uhc:lobby run function uhc:in_game/force_command/end

## Autres modes de jeu
execute unless score #game_progress uhc.game_progress matches 2.. if score #bhc uhc.gamemode matches 1 run function bhc:in_game/timer/tick
execute unless score #game_progress uhc.game_progress matches 2.. run function #plugin:in_game/timer/tick

scoreboard players set @a uhc.player.data.check 0
