
#> uhc:datapack_update/2026/26_7/9
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.7.9
#

scoreboard objectives add uhc.menu.gamemode.main dummy
scoreboard players set #hp_tab uhc.data.setup 1
scoreboard players set #hp_name uhc.data.setup 1
scoreboard players set #hp_100 uhc.data.setup 1

scoreboard players set #lava_bucket uhc.data.setup 1
scoreboard players set #flint_and_steel uhc.data.setup 1

scoreboard players set #update uhc.data.update 26079
execute as @a[tag=uhc.host] run function uhc:translation/datapack_update_version
