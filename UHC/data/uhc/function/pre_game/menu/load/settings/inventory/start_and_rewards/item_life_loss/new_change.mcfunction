
#> uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_life_loss/new_change
#
# @within			uhc:pre_game/menu/detector/main
#
#
# @description		Menu
#

data modify storage uhc:settings Item_life_loss set from entity @s Inventory
execute as @s[gamemode=adventure] run function uhc:pre_game/menu/load/settings/menu
