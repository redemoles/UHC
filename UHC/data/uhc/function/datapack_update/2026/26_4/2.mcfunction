
#> uhc:datapack_update/2026/26_4/2
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.4.2
#

scoreboard objectives add uhc.menu.scenario.restricted_area dummy

scoreboard players set #double_ores uhc.scenario 0
scoreboard players set #hastey_boys uhc.scenario 0
scoreboard players set #no_fire uhc.scenario 0

execute as @a run attribute @s minecraft:fall_damage_multiplier base set 1.0

scoreboard players set #update uhc.data.update 26042
