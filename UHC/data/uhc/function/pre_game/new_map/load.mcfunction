
#> uhc:pre_game/new_map/load
#
# @within			uhc:load
#
#
# @description		Gamemode des joueurs à leur connexion si aucun lobby n'a été créé
#

execute if score #game_progress uhc.game_progress matches 0.. run return fail

scoreboard objectives add uhc.game.reset trigger
scoreboard players enable @a uhc.game.reset

tellraw @a [{"text":"[","color":"#6F6F6F","click_event":{"action":"run_command","command":"/trigger uhc.game.reset"}},{"text":"UHC 26.6.0","color":"#FFE73F"},{"text":" - "},{"text":"pour ","color":"#E7E7E7"},{"text":"MC 26.1.2","color":"#3FE7FF"},{"text":" - "},{"text":"par ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":"\n\nClick on this message to load the datapack.","color":"#FFFFFF"},{"text":"\nCliquer sur ce message pour charger le datapack.","color":"#CFCFCF","italic":true}]
