
#> uhc:datapack_update/2026/26_5/3
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.5.3
#

scoreboard objectives add uhc.menu.settings.potion dummy

scoreboard players set #effect_fire_resistance uhc.data.setup 1
scoreboard players set #effect_harming uhc.data.setup 1
scoreboard players set #effect_healing uhc.data.setup 1
scoreboard players set #effect_poison uhc.data.setup 1
scoreboard players set #effect_regeneration uhc.data.setup 1
scoreboard players set #effect_slowness uhc.data.setup 1
scoreboard players set #effect_weakness uhc.data.setup 1

scoreboard players set #effect_level_2 uhc.data.setup 0
scoreboard players set #effect_extended uhc.data.setup 1

scoreboard players set #update uhc.data.update 26053
execute as @a[tag=uhc.host] run function uhc:translation/datapack_update_version
