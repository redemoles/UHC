
#> uhc:pre_game/menu/selection/scenario/list/ores_limit/2_remove_1
#
# @within			uhc:pre_game/menu/selection/settings/host
#
#
# @description		Menu
#

# Gold limit
execute if score @s uhc.menu.scenario.ores_limit matches 11 unless score #gold_limit uhc.scenario.ores_limit.setup matches ..0 run scoreboard players remove #gold_limit uhc.scenario.ores_limit.setup 1


# Diamond limit
execute if score @s uhc.menu.scenario.ores_limit matches 12 unless score #diamond_limit uhc.scenario.ores_limit.setup matches ..0 run scoreboard players remove #diamond_limit uhc.scenario.ores_limit.setup 1


execute store result storage uhc:scenario ores_limit.gold int 1 run scoreboard players get #gold_limit uhc.scenario.ores_limit.setup
execute store result storage uhc:scenario ores_limit.diamond int 1 run scoreboard players get #diamond_limit uhc.scenario.ores_limit.setup
