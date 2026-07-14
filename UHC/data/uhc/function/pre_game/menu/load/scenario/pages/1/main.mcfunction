
#> uhc:pre_game/menu/load/scenario/pages/1/main
#
# @within			uhc:pre_game/menu/selection/main/host/main
#
#
# @description		Redirection
#

clear @s
tag @s remove uhc.menu.main.host
scoreboard players set @s uhc.menu.scenario.main 1
scoreboard players set @s uhc.menu.main.player 0
scoreboard players set @s uhc.menu.scenario.blood_diamond 0
tag @s remove uhc.menu.scenario.enchanting_setup
scoreboard players set @s uhc.menu.scenario.ores_limit 0
scoreboard players set @s uhc.menu.scenario.restricted_area 0


function uhc:pre_game/menu/load/background/

data modify storage uhc:temp scenario.blood_diamond_end_tier_1 set from storage uhc:scenario blood_diamond.end_tier_1
data modify storage uhc:temp scenario.blood_diamond_end_tier_2 set from storage uhc:scenario blood_diamond.end_tier_2
data modify storage uhc:temp scenario.blood_diamond_mined_tier_2 set from storage uhc:scenario blood_diamond.mined_tier_2

data modify storage uhc:temp scenario.go_to_hell_timer set from storage uhc:scenario go_to_hell.timer

execute as @s[scores={uhc.player.lang=061801}] run function uhc:pre_game/menu/load/scenario/pages/1/fra with storage uhc:temp scenario
execute as @s[scores={uhc.player.lang=051407}] run function uhc:pre_game/menu/load/scenario/pages/1/eng with storage uhc:temp scenario
