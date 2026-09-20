
#> uhc:start/item_starter/give
#
# @within			uhc:start/item_starter/data
#
#
# @description		Items de démarrage
#

$loot give @s loot {"type":"minecraft:block","pools":[{"rolls":1,"bonus_rolls":0,"entries":[{"type":"minecraft:item","name":"$(id)","modifier":[{"type":"minecraft:set_components","components":$(components)},{"type":"minecraft:set_count","count":$(count)}]}]}]}

# Boucle tant qu'il reste un item dans l'inventaire
data remove storage uhc:temp Item_starter[0]
data modify storage uhc:temp Item_starter[0].components merge value {}
execute if data storage uhc:temp Item_starter[0] run function uhc:start/item_starter/give with storage uhc:temp Item_starter[0]
