
#> uhc:in_game/timer/tick
#
# @within			uhc:tick
#
#
# @description		Fonction tick de base en jeu
#

# Tick
execute unless score #tick_start uhc.data.temp matches 0..200 if entity @p[tag=test] run scoreboard players set #tick uhc.data.temp 19
execute unless score #pause uhc.data.temp matches 1 run scoreboard players add #tick uhc.data.temp 1
execute if score #minutes uhc.data.temp matches -1 run scoreboard players add #tick_start uhc.data.temp 1
# Chronomètre démarrage
execute if score #tick_start uhc.data.temp matches 0..200 run function uhc:start/countdown/start
execute if score #start_delay uhc.data.setup matches 1 if score #sec_cooldown uhc.data.temp matches 1 if score #tick uhc.data.temp matches 20 run function uhc:start/countdown/end
execute if score #start_delay uhc.data.setup matches 0 run function uhc:start/countdown/end
execute if score #tick_start uhc.data.temp matches 0..200 run return fail
# Secondes
execute if score #tick uhc.data.temp matches 20 run function uhc:in_game/timer/second

## TP
# TP un joueur au sol après spawn ou respawn
execute as @a[scores={uhc.player.tp=1}] at @s positioned over motion_blocking run tp @s ~ ~ ~
scoreboard players set @a uhc.player.tp 0

## Hotbar
# Données Worldborder
execute store result score #border_size uhc.data.temp run worldborder get
scoreboard players remove #border_size uhc.data.temp 1
scoreboard players operation #border_size uhc.data.temp /= #02 uhc.data.numbers

# Texte informations de positions de joueurs
execute if score #tracker uhc.data.temp matches 1 as @a[tag=uhc.player] run function uhc:in_game/timer/hotbar/target/

# Texte informations de base
execute if score #hotbar_cooldown uhc.data.temp matches 1.. if score #tick uhc.data.temp matches 0 run function uhc:in_game/timer/hotbar/cooldown/
execute unless score #hotbar_cooldown uhc.data.temp matches 1.. if score #vanilla uhc.gamemode matches 1 if score #tick uhc.data.temp matches 0.. run function uhc:translation/hotbar/uhc with storage uhc:temp hotbar
execute unless score #hotbar_cooldown uhc.data.temp matches 1.. if score #bhc uhc.gamemode matches 1 if score #tick uhc.data.temp matches 0.. run function bhc:timer/hotbar
execute unless score #hotbar_cooldown uhc.data.temp matches 1.. if score #mls uhc.gamemode matches 1 if score #tick uhc.data.temp matches 0.. run function mls:timer/hotbar with storage uhc:temp hotbar
execute unless score #hotbar_cooldown uhc.data.temp matches 1.. if score #nzl uhc.gamemode matches 1 if score #tick uhc.data.temp matches 0.. run function nzl:timer/hotbar
tag @a[tag=uhc.target.targeter_done] remove uhc.target.targeter_done

## Modifications de données d'entités
# Réduction des dégâts des flèches
execute if score #custom_arrow uhc.data.setup matches 1.. as @e[type=minecraft:arrow] run function uhc:in_game/entity/arrow/
execute unless score #custom_arrow uhc.data.setup matches 1.. as @e[type=minecraft:arrow,tag=!uhc.checked] run function uhc:in_game/entity/arrow/basic
# Items
execute as @e[type=minecraft:item,tag=!uhc.checked] run function uhc:in_game/entity/item/tick

## Triggers
# Night Vision
execute as @p[scores={uhc.night_vision=1}] run function uhc:in_game/player/effect/night_vision
# Ironman
execute if score #player uhc.scenario.ironman matches 0.. as @p[scores={uhc.ironman.list=1}] run function uhc:in_game/scenario/ironman/list
execute if score #player uhc.scenario.ironman matches 1 unless score #winner_rewarded uhc.scenario.ironman matches 1 as @p[tag=uhc.ironman] run function uhc:in_game/scenario/ironman/reward
# Best PvE
execute if score #best_pve uhc.scenario matches 1 as @p[scores={uhc.best_pve.list=1}] run function uhc:in_game/scenario/best_pve/list
# Info personnel et des autres équipes
execute as @p[scores={uhc.info.me=1}] run function uhc:in_game/player/misc/info/me
execute as @p[scores={uhc.info.team=1}] run function uhc:in_game/player/misc/info/team/list
execute as @p[scores={uhc.info.team.temp=1..}] run function uhc:in_game/player/misc/info/team/bhc/

## Scenarios
execute if score #experienceless uhc.scenario matches 1 as @e[type=experience_orb] run kill @s
execute if score #enchanting_setup uhc.scenario matches 1 run function uhc:in_game/scenario/enchanting_setup/tick
execute if score #sound_paranoia uhc.scenario matches 1 as @e[type=minecraft:marker,tag=uhc.sound_paranoia.on] at @s run function uhc:in_game/scenario/sound_paranoia/tick

## Réduction de vie automatique
execute if score #3_lives_left uhc.data.temp matches ..0 if entity @p[scores={uhc.player.lives=4..}] as @e[type=minecraft:marker,tag=UHC] run function uhc:in_game/player/lives_remove/drop_to_3
execute if score #2_lives_left uhc.data.temp matches ..0 if entity @p[scores={uhc.player.lives=3}] as @e[type=minecraft:marker,tag=UHC] run function uhc:in_game/player/lives_remove/drop_to_2
execute if score #1_life_left uhc.data.temp matches ..0 if entity @p[scores={uhc.player.lives=2}] as @e[type=minecraft:marker,tag=UHC] run function uhc:in_game/player/lives_remove/drop_to_1

## Morts
# Message de mort
execute if score #message uhc.data.setup matches 1..5 run scoreboard players add #message uhc.data.setup 1
execute if score #message uhc.data.setup matches 6 run scoreboard players set #message uhc.data.setup 1

# Détection d'un joueur mort
execute as @e[type=minecraft:player,scores={uhc.player.death.temp=1}] run function uhc:in_game/player/death/main

## @a → Effets, Respawn, Connexion d'un joueur externe, Scenarios
execute as @a run function uhc:in_game/player/tick
execute if score #absorption uhc.data.setup matches ..1 as @a[tag=uhc.player,predicate=uhc:effect/absorption] run function uhc:in_game/player/effect/absorption

## End
# Détection entrée/sortie de l'end et respawn d'un joueur mort
execute in minecraft:the_end run scoreboard players set @a[distance=0..] uhc.world.end 1
execute in minecraft:overworld as @a[distance=0..,scores={uhc.world.end=1}] run function uhc:in_game/tp/end_exit

## Force commands
# Force Meet-up
execute if entity @p[scores={uhc.meetup.activate=1}] in minecraft:overworld run function uhc:in_game/force_command/meetup

# Force Endgame
execute if entity @p[scores={uhc.game_progress=1}] in uhc:lobby run function uhc:in_game/force_command/end

## Autres modes de jeu
execute if score #bhc uhc.gamemode matches 1 unless score #game_progress uhc.game_progress matches 2.. run function bhc:timer/tick
execute if score #mls uhc.gamemode matches 1 if score #pvp uhc.data.temp matches ..0 run function mls:timer/tick
execute if score #nzl uhc.gamemode matches 1 unless score #game_progress uhc.game_progress matches 2.. run function nzl:timer/tick

scoreboard players set @a uhc.player.data.check 0
