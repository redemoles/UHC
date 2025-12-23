
#> mls:timer/clear_item
#
# @within			mls:timer/tick
#
#
# @description		Supprime les drops de livre
#

# Clear Item de types au sol
kill @s[nbt={Item:{id:"minecraft:writable_book",components:{"minecraft:custom_data":{uhc.scenario.moles:1}}}}]
kill @s[nbt={Item:{id:"minecraft:snowball",components:{"minecraft:custom_data":{uhc.scenario.moles:1}}}}]
tag @s add moles.item.check
