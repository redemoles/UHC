
#> nzl:timer/clear_item
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Function executed every tick
#

# Clear Item de types au sol
kill @s[nbt={Item:{id:"minecraft:written_book"}}]
kill @s[nbt={Item:{id:"minecraft:snowball"}}]
tag @s add item.check
