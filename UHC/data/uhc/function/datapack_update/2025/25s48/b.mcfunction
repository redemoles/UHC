
#> uhc:datapack_update/2025/25s48/b
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 25s48b
#

scoreboard players operation #shrink_1_dynamic uhc.data.temp = #shrink_1_adaptive uhc.data.temp
scoreboard players operation #shrink_2_dynamic uhc.data.temp = #shrink_2_adaptive uhc.data.temp
scoreboard players operation #shrink_3_dynamic uhc.data.temp = #shrink_3_adaptive uhc.data.temp
scoreboard players operation #shrink_dynamic uhc.data.setup = #shrink_adaptive uhc.data.setup

scoreboard players set #update uhc.data.update 25482
