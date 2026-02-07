
#> uhc:in_game/endgame
#
# @within			uhc:in_game/player/death
# @within			uhc:in_game/force_command/end
#
# @description		Message si partie terminée
#

execute as @p[tag=uhc.player,tag=!uhc.spec] run scoreboard players operation #team_alive uhc.id.team = @s uhc.id.team
execute if score #bhc uhc.gamemode matches 1 if score #game_progress uhc.game_progress matches 2 run function bhc:scores_calculator/endgame/detect
execute if score #bhc uhc.gamemode matches 1 if score #game_progress uhc.game_progress matches 3.. run function bhc:scores_calculator/endgame/message_text

# Msg FRA
execute if score #vanilla uhc.gamemode matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"La partie est terminée !\nLa victoire est attribué à ","color":"#3FE7FF"},{"selector":"@a[predicate=uhc:id/team_alive]"},{"text":" !\n","color":"#3FE7FF"}]

# Msg ENG
execute if score #vanilla uhc.gamemode matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"The game is over!\nThe victory is attributed to ","color":"#3FE7FF"},{"selector":"@a[predicate=uhc:id/team_alive]"},{"text":" !\n","color":"#3FE7FF"}]

execute unless score #bhc uhc.gamemode matches 1 run scoreboard objectives setdisplay sidebar uhc.player.kills
gamerule minecraft:spectators_generate_chunks true

scoreboard players enable @a uhc.info.team
scoreboard players set #game_progress uhc.game_progress 3
