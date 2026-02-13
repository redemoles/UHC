
#> uhc:in_game/inventory/ban_item/compensation_1
#
# @within			uhc:in_game/inventory/ban_item/compensation
#
#
# @description		Compensation à la suppresion d'items interdits
#

$give @s $(id) $(count)

# Boucle tant qu'il reste un item dans l'inventaire
data remove storage uhc:temp Item_notch_totem[0]
data modify storage uhc:temp Item_notch_totem[0].components merge value {}
execute if data storage uhc:temp Item_notch_totem[0] run function uhc:in_game/inventory/ban_item/compensation_1 with storage uhc:temp Item_notch_totem[0]
