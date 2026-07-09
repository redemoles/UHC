
#> uhc:pre_game/new_map/player_inventory_check
#
# @within			uhc:pre_game/new_map/load
#
#
# @description		Vérifie que le datapack n'est pas chargé sur une map non prévue à cette effet
#

execute unless score #cancel uhc.game.reset matches 0.. run scoreboard players set #cancel uhc.game.reset 0

## Si l'inventaire contient un item, le datapack 
data modify storage uhc:temp Inventory set from entity @s Inventory
execute if data storage uhc:temp Inventory[0] run scoreboard players set #cancel uhc.game.reset 1
