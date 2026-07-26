
#> uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_additional/
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

gamemode creative @s
clear @s
scoreboard players set @s uhc.menu.settings.inventory 5
data modify storage uhc:temp Item_additional set from storage uhc:settings Item_additional
data modify storage uhc:temp Item_additional[0].components merge value {}
execute if data storage uhc:temp Item_additional[0] run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_additional/item with storage uhc:temp Item_additional[0]

function uhc:translation/menu/load/settings_inventory_rewards
