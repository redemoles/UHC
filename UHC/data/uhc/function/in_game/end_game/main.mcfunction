
#> uhc:in_game/end_game/main
#
# @within			uhc:in_game/player/death
# @within			uhc:in_game/force_command/end
#
# @description		Partie terminée
#

## Si aucune équipe en jeu
execute store result score #team_total uhc.data.temp if entity @e[type=minecraft:marker,tag=UHC,distance=0..]
execute if score #team_total uhc.data.temp matches 0 run return run function uhc:translation/in_game/end_game_no_winner

## Id de l'équipe gagnante
execute as @p[tag=uhc.player,tag=!uhc.spec] run scoreboard players operation #team_alive uhc.id.team = @s uhc.id.team

## Mode de jeu
# Bingo UHC
execute if score #bhc uhc.gamemode matches 1 if score #game_progress uhc.game_progress matches 2 run function bhc:scores_calculator/endgame/detect
execute if score #bhc uhc.gamemode matches 1 if score #game_progress uhc.game_progress matches 3.. run function bhc:scores_calculator/endgame/message_text
# Vanilla
execute if score #vanilla uhc.gamemode matches 1 run function uhc:in_game/end_game/vanilla

execute unless score #bhc uhc.gamemode matches 1 run scoreboard objectives setdisplay sidebar uhc.player.kills
gamerule minecraft:spectators_generate_chunks true

scoreboard players enable @a uhc.info.team
scoreboard players set #game_progress uhc.game_progress 3
