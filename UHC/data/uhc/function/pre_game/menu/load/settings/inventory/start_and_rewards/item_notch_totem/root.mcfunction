
#> uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_notch_totem/root
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

gamemode creative @s
clear @s
scoreboard players set @s uhc.menu.settings.inventory 4
data modify storage uhc:temp Item_notch_totem set from storage uhc:settings Item_notch_totem
data modify storage uhc:temp Item_notch_totem[0].components merge value {}
execute if data storage uhc:temp Item_notch_totem[0] run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_notch_totem/item with storage uhc:temp Item_notch_totem[0]

function uhc:translation/menu/load/settings/inventory_rewards_creative
