
#> uhc:in_game/inventory/ban_item/compensation
#
# @within			uhc:in_game/inventory/ban_item/root
#
#
# @description		Compensation à la suppresion d'items interdits
#

$clear @s minecraft:$(item) 1
data modify storage uhc:temp Item_notch_totem set from storage uhc:settings Item_notch_totem
data modify storage uhc:temp Item_notch_totem[0].components merge value {}
execute if data storage uhc:temp Item_notch_totem[0] run function uhc:in_game/inventory/ban_item/compensation_1 with storage uhc:temp Item_notch_totem[0]
$execute if items entity @s container.* minecraft:$(item) run function uhc:in_game/inventory/ban_item/compensation with storage uhc:settings item.$(item)
