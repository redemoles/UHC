
#> uhc:datapack_update/reset/
#
# @within			uhc:datapack_update/list
#
#
# @description		Reload rapide du datapack
#

scoreboard players set #reset uhc.data.update 0

execute as @a[tag=uhc.host] run function uhc:translation/datapack_update_reset

function uhc:reset
