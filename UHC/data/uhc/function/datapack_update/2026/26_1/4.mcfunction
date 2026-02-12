
#> uhc:datapack_update/2026/26_1/4
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.1.4
#

scoreboard objectives add uhc.player.health.auto health [{"text":"❤","color":"#FF5F5F"}]
scoreboard objectives add uhc.player.health.check dummy
scoreboard objectives add uhc.scenario.team_health.100 dummy "%"
execute if score #team_health uhc.scenario matches 1 if score #hp_tab uhc.data.setup matches 2 run scoreboard objectives setdisplay list uhc.scenario.team_health.100

scoreboard players set #mystery_scenarios uhc.data.setup 0

scoreboard players set #update uhc.data.update 26014
