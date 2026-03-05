
#> uhc:in_game/player/death/location/item_drop/armor/drop
#
# @within			uhc:in_game/player/death/location/item_drop/armor/randomizer
#
#
# @description		
#

# Loot
loot spawn ~ ~ ~ loot uhc:temp_item

# Remplacer l'item temporaire par le vrai de l'inventaire
data modify entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"uhc_temp_item":1b}}}},limit=1] Item set from storage uhc:temp Item_randomizer[0]

# Boucle tant qu'il reste un item dans l'inventaire
data remove storage uhc:temp Item_randomizer[0]
execute if data storage uhc:temp Item_randomizer[0] run function uhc:in_game/player/death/location/item_drop/armor/drop
