
#> uhc:datapack_update/reset/full
#
# @within			uhc:datapack_update/list
#
#
# @description		Reload complet du datapack
#

scoreboard players set #reset uhc.data.update 0

execute as @a[tag=uhc.host] run function uhc:translation/datapack_update_reset_full

function uhc:reset/full
