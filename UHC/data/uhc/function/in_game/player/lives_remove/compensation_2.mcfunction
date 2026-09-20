
#> uhc:in_game/player/lives_remove/compensation_2
#
# @within			uhc:in_game/player/lives_remove/compensation_1
#
#
# @description		
#

$loot give @s loot {"type":"minecraft:block","pools":[{"rolls":1,"bonus_rolls":0,"entries":[{"type":"minecraft:item","name":"$(id)","modifier":[{"type":"minecraft:set_components","components":$(components)},{"type":"minecraft:set_count","count":$(count)}]}]}]}

# Boucle tant qu'il reste un item dans l'inventaire
data remove storage uhc:temp Item_life_loss[0]
data modify storage uhc:temp Item_life_loss[0].components merge value {}
execute if data storage uhc:temp Item_life_loss[0] run function uhc:in_game/player/lives_remove/compensation_2 with storage uhc:temp Item_life_loss[0]
