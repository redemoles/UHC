
#> uhc:pre_game/menu/selection/scenario/list/ores_limit/4_add_5
#
# @within			uhc:pre_game/menu/selection/settings/host
#
#
# @description		Menu
#

# Gold limit
execute if score @s uhc.menu.scenario.ores_limit matches 11 unless score #gold_limit uhc.scenario.ores_limit.setup matches 128.. run scoreboard players add #gold_limit uhc.scenario.ores_limit.setup 5
execute if score @s uhc.menu.scenario.ores_limit matches 11 if score #gold_limit uhc.scenario.ores_limit.setup matches 128.. run scoreboard players set #gold_limit uhc.scenario.ores_limit.setup 128

# Diamond limit
execute if score @s uhc.menu.scenario.ores_limit matches 12 unless score #diamond_limit uhc.scenario.ores_limit.setup matches 64.. run scoreboard players add #diamond_limit uhc.scenario.ores_limit.setup 5
execute if score @s uhc.menu.scenario.ores_limit matches 12 if score #diamond_limit uhc.scenario.ores_limit.setup matches 64.. run scoreboard players set #diamond_limit uhc.scenario.ores_limit.setup 64

execute store result storage uhc:scenario ores_limit.gold int 1 run scoreboard players get #gold_limit uhc.scenario.ores_limit.setup
execute store result storage uhc:scenario ores_limit.diamond int 1 run scoreboard players get #diamond_limit uhc.scenario.ores_limit.setup
