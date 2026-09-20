
#> uhc:in_game/player/death/location/item_drop/additional
#
# @within			uhc:in_game/player/death/location/item_drop/main
#
#
# @description		
#

$loot spawn ~ ~ ~ loot {"type":"minecraft:block","pools":[{"rolls":1,"bonus_rolls":0,"entries":[{"type":"minecraft:item","name":"$(id)","modifier":[{"type":"minecraft:set_components","components":$(components)},{"type":"minecraft:set_count","count":$(count)}]}]}]}

# Boucle tant qu'il reste un item dans l'inventaire
data remove storage uhc:temp Item_additional[0]
data modify storage uhc:temp Item_additional[0].components merge value {}
execute if data storage uhc:temp Item_additional[0] run function uhc:in_game/player/death/location/item_drop/additional with storage uhc:temp Item_additional[0]
