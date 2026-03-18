
#> uhc:in_game/entity/item/tick
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Modification d'items
#

tag @s add uhc.checked

# Règles de stuff
execute if score #cobweb uhc.data.setup matches 0..32 if data entity @s Item{id:"minecraft:cobweb"} run function uhc:in_game/entity/item/cobweb with storage uhc:settings item

# Scénarios
execute if score #cut_clean uhc.scenario matches 1 run function uhc:in_game/scenario/cut_clean/tick

# Elytra start
kill @s[nbt={Item:{"id":"minecraft:elytra","components":{"minecraft:custom_data":{"Tags":"start_in_the_sky"}}}}]
