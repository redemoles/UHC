
#> uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_life_loss/root
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

gamemode creative @s
clear @s
scoreboard players set @s uhc.menu.settings.inventory 6
data modify storage uhc:temp Item_life_loss set from storage uhc:settings Item_life_loss
data modify storage uhc:temp Item_life_loss[0].components merge value {}
execute if data storage uhc:temp Item_life_loss[0] run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_life_loss/item with storage uhc:temp Item_life_loss[0]

function uhc:translation/menu/load/settings/inventory_rewards_creative
