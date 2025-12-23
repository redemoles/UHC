
#> mls:entity/arrow/
#
# @within			uhc:in_game/entity/arrow/
#
#
# @description		TP flèche
#

data modify storage mls:arrow weapon set from entity @s weapon
data modify storage mls:arrow weapon set from storage mls:arrow weapon.components.minecraft:custom_data.Tags
function mls:entity/arrow/tp with storage mls:arrow
