
#> uhc:in_game/player/login/main
#
# @within			uhc:in_game/player/tick
#
#
# @description		Reconnexion d'un joueur
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players set @s uhc.player.disconnect 0

## Vérifie si le joueur s'est déconnecté au démarrage lorsque celui-ci se fait depuis une plateforme dans le ciel
execute if entity @s[tag=uhc.player.start_in_the_sky] if score #game_progress uhc.game_progress matches 1 if score #minutes uhc.data.temp matches 0.. run function uhc:in_game/player/login/start_in_the_sky

## Supprimer les effets de start / respawn
execute if score #minutes uhc.data.temp matches 0.. as @s[tag=uhc.player,tag=uhc.start.temp] run function uhc:in_game/player/login/start

## Team Health
execute if entity @s[gamemode=!spectator] run function uhc:in_game/player/misc/health/default

## TP Bordure
execute if score #shrink_1_time_left uhc.data.temp matches ..0 as @s[tag=uhc.player,predicate=!uhc:dimension/the_nether] at @s run function uhc:in_game/tp/border/coords

## Coordonnées de réapparition
execute if score #1_life_left uhc.data.temp matches 1.. run function uhc:in_game/tp/spawn/point/macro_set

## Trigger
# Ironman
execute if score #player uhc.scenario.ironman matches ..0 run scoreboard players reset @s uhc.ironman.list
# Messages
execute if score #minutes uhc.data.temp matches 0.. run function uhc:translation/in_game/player_login_main
# Informations sur les équipes
execute if score #game_progress uhc.game_progress matches 2.. run scoreboard players enable @s uhc.info.team

## Bingo UHC
execute if score #bhc bhc.scenario matches 02 as @s[tag=uhc.player] in uhc:lobby run function bhc:scenario/02/target/death/cycle_reset
execute if score #3_lives_left uhc.data.temp matches ..0 if score @s uhc.player.lives matches 4.. as @e[type=minecraft:marker,tag=UHC] run function uhc:in_game/player/lives_remove/drop_to_3
execute if score #2_lives_left uhc.data.temp matches ..0 if score @s uhc.player.lives matches 3 as @e[type=minecraft:marker,tag=UHC] run function uhc:in_game/player/lives_remove/drop_to_2
execute if score #1_life_left uhc.data.temp matches ..0 if score @s uhc.player.lives matches 2 as @e[type=minecraft:marker,tag=UHC] run function uhc:in_game/player/lives_remove/drop_to_1
