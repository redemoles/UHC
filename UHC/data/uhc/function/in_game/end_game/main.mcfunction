
#> uhc:in_game/end_game/main
#
# @within			uhc:in_game/player/death
# @within			uhc:in_game/force_command/end
#
# @description		Partie terminée
#

execute as @p[tag=uhc.player,tag=!uhc.spec] run scoreboard players operation #team_alive uhc.id.team = @s uhc.id.team
execute if score #bhc uhc.gamemode matches 1 if score #game_progress uhc.game_progress matches 2 run function bhc:scores_calculator/endgame/detect
execute if score #bhc uhc.gamemode matches 1 if score #game_progress uhc.game_progress matches 3.. run function bhc:scores_calculator/endgame/message_text

execute if score #vanilla uhc.gamemode matches 1 run function uhc:in_game/end_game/vanilla

execute unless score #bhc uhc.gamemode matches 1 run scoreboard objectives setdisplay sidebar uhc.player.kills
gamerule minecraft:spectators_generate_chunks true

scoreboard players enable @a uhc.info.team
scoreboard players set #game_progress uhc.game_progress 3
