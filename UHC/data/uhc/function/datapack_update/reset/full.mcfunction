
#> uhc:datapack_update/reset/full
#
# @within			uhc:datapack_update/list
#
#
# @description		Reload complet du datapack
#

scoreboard players set #reset uhc.data.update 0

tellraw @a[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.4.6","color":"#FFE73F"},{"text":"]"},{"text":" Réinitialisation complète automatique du datapack.\n","color":"#FFFFFF"}]
tellraw @a[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"[","color":"#6F6F6F"},{"text":"UHC 26.4.6","color":"#FFE73F"},{"text":"]"},{"text":" Auto full reset of the datapack.\n","color":"#FFFFFF"}]

function uhc:reset/full
