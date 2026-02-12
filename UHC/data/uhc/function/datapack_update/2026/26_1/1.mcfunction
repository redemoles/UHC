
#> uhc:datapack_update/2026/26_1/1
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.1.1
#

scoreboard players set #random_team_pots uhc.data.setup 1
execute if score #random_team uhc.data.setup matches 2 run scoreboard players set #random_team uhc.data.setup 1

scoreboard players set #update uhc.data.update 26011