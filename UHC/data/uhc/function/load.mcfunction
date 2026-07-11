
#> uhc:load
#
# @within			#minecraft:load
#
#
# @description		Function executed when the datapack is loaded
#

function uhc:pre_game/new_map/load

# Privilège d'host
tag @s add host
tag @s add uhc.host
execute if score #update uhc.data.update matches 0.. run function uhc:datapack_update/list

# Affichage du message aux hosts
execute as @a[tag=uhc.host] run function uhc:translation/load
