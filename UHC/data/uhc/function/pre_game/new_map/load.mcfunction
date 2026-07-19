
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

## Vérifie que le datapack n'est pas chargé sur une map non prévue à cette effet
execute unless score #cancel uhc.game.reset matches 0.. as @a run function uhc:pre_game/new_map/player_inventory_check

## Message click event pour charger le datapack
execute if score #cancel uhc.game.reset matches 0 run return run tellraw @a [{"text":"[","color":"#6F6F6F","click_event":{"action":"run_command","command":"/trigger uhc.game.reset"}},{"text":"Bingo UHC 26.7.7","color":"#FFE73F"},{"text":" - "},{"text":"for ","color":"#E7E7E7"},{"text":"MC 26.1.2","color":"#3FE7FF"},{"text":" - "},{"text":"by ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":"\nClick on this message to load the datapack.","color":"#FFFFFF"},{"text":"\nCliquer sur ce message pour charger le datapack.\n","color":"#CFCFCF","italic":true}]
execute if score #cancel uhc.game.reset matches 1 run return run tellraw @a [{"text":"[","color":"#6F6F6F","click_event":{"action":"run_command","command":"/function uhc:reset"}},{"text":"Bingo UHC 26.7.7","color":"#FFE73F"},{"text":" - "},{"text":"for ","color":"#E7E7E7"},{"text":"MC 26.1.2","color":"#3FE7FF"},{"text":" - "},{"text":"by ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":"\nClick on this message to load the datapack.","color":"#FFFFFF"},{"text":"\nCliquer sur ce message pour charger le datapack.\n","color":"#CFCFCF","italic":true}]
