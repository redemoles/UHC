
#> uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_notch_totem/item
#
# @within			uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_notch_totem/root
#
#
# @description		Menu
#

$loot give @s loot {"type":"minecraft:block","pools":[{"rolls":1,"bonus_rolls":0,"entries":[{"type":"minecraft:item","name":"$(id)","modifier":[{"type":"minecraft:set_components","components":$(components)},{"type":"minecraft:set_count","count":$(count)}]}]}]}

# Boucle tant qu'il reste un item dans l'inventaire
data remove storage uhc:temp Item_notch_totem[0]
data modify storage uhc:temp Item_notch_totem[0].components merge value {}
execute if data storage uhc:temp Item_notch_totem[0] run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_notch_totem/item with storage uhc:temp Item_notch_totem[0]
