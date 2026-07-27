
#> uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_ironman/root
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

gamemode creative @s
clear @s
scoreboard players set @s uhc.menu.settings.inventory 3
data modify storage uhc:temp Item_ironman set from storage uhc:settings Item_ironman
data modify storage uhc:temp Item_ironman[0].components merge value {}
execute if data storage uhc:temp Item_ironman[0] run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_ironman/item with storage uhc:temp Item_ironman[0]

function uhc:translation/menu/load/settings/inventory_rewards_creative
