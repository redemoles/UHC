
#> uhc:in_game/player/death/inventory/item_additional_custom
#
# @within			uhc:in_game/player/death/inventory/item_additional
#
#
# @description		
#

$loot spawn ~ ~ ~ loot {"type":"minecraft:block","pools":[{"rolls":1,"bonus_rolls":0,"entries":[{"type":"minecraft:item","name":"$(id)","functions":[{"function":"minecraft:set_components","components":$(components)},{"function":"minecraft:set_count","count":$(count)}]}]}]}

# Boucle tant qu'il reste un item dans l'inventaire
data remove storage uhc:temp Item_additional[0]
data modify storage uhc:temp Item_additional[0].components merge value {}
execute if data storage uhc:temp Item_additional[0] run function uhc:in_game/player/death/inventory/item_additional_custom with storage uhc:temp Item_additional[0]
