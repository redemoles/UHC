
#> uhc:pre_game/menu/selection/scenario/restricted_area/sky_high/2_remove_1
#
# @within			uhc:pre_game/menu/selection/settings/host
#
#
# @description		Menu
#

# Timer Sky High
execute if score @s uhc.menu.scenario.restricted_area matches 2 if score #sky_high uhc.data.setup matches 1.. run scoreboard players remove #sky_high uhc.data.setup 1


# Hauteur Sky High
execute if score @s uhc.menu.scenario.restricted_area matches 3 if score #height uhc.scenario.sky_high.settings matches 101.. run scoreboard players remove #height uhc.scenario.sky_high.settings 1


execute store result storage uhc:scenario sky_high.timer int 1 run scoreboard players get #sky_high uhc.data.setup
execute store result storage uhc:scenario sky_high.height int 1 run scoreboard players get #height uhc.scenario.sky_high.settings
