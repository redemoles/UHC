
#> uhc:in_game/player/death/location/item_drop/main
#
# @within			uhc:in_game/player/death/location/event
#
#
# @description		
#

## Items additionnels
# Inventaire
execute if score @s uhc.player.lives matches ..0 run data modify storage uhc:temp Inventory set from entity @s Inventory
execute if score @s uhc.player.lives matches ..0 run data modify storage uhc:temp Inventory append from entity @s equipment.offhand
execute if score @s uhc.player.lives matches ..0 run data modify storage uhc:temp Inventory append from entity @s equipment.head
execute if score @s uhc.player.lives matches ..0 run data modify storage uhc:temp Inventory append from entity @s equipment.chest
execute if score @s uhc.player.lives matches ..0 run data modify storage uhc:temp Inventory append from entity @s equipment.legs
execute if score @s uhc.player.lives matches ..0 run data modify storage uhc:temp Inventory append from entity @s equipment.feet
execute if score @s uhc.player.lives matches ..0 if data storage uhc:temp Inventory[0] run function uhc:in_game/player/death/location/item_drop/inventory
# Duplicat d'armures
execute if score @s uhc.player.death.armor_additional_item matches 1 run function uhc:in_game/player/death/location/item_drop/armor/randomizer
# Drops customs
data modify storage uhc:temp Item_additional set from storage uhc:settings Item_additional
data modify storage uhc:temp Item_additional[0].components merge value {}
function uhc:in_game/player/death/location/item_drop/additional with storage uhc:temp Item_additional[0]

## Scénarios
# Bookception
execute if score #bookception uhc.scenario matches 1 run function uhc:in_game/scenario/bookception/kill
# Player Head
execute if score #golden_head uhc.scenario matches 1 run function uhc:in_game/scenario/golden_head/kill
