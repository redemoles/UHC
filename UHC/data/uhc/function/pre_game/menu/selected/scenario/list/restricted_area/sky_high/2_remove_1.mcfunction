
#> uhc:pre_game/menu/selection/scenario/list/restricted_area/sky_high/2_remove_1
#
# @within			uhc:pre_game/menu/selection/settings/host
#
#
# @description		Menu
#

# Timer Sky High
execute if score @s uhc.menu.scenario.restricted_area matches 3 if score #sky_high uhc.data.setup matches 1.. run scoreboard players remove #sky_high uhc.data.setup 1


# Hauteur Sky High
execute if score @s uhc.menu.scenario.restricted_area matches 4 if score #height uhc.scenario.sky_high.settings matches 101.. run scoreboard players remove #height uhc.scenario.sky_high.settings 1


# Don d'enderpearl
execute if score @s uhc.menu.scenario.restricted_area matches 5 if score #ender_pearl_gift uhc.scenario.sky_high.settings matches 1.. run scoreboard players remove #ender_pearl_gift uhc.scenario.sky_high.settings 1


# Temps entre chaque don d'enderpearl
execute if score @s uhc.menu.scenario.restricted_area matches 6 if score #ender_pearl_timer uhc.scenario.sky_high.settings matches 2.. run scoreboard players remove #ender_pearl_timer uhc.scenario.sky_high.settings 1


execute store result storage uhc:scenario sky_high.timer int 1 run scoreboard players get #sky_high uhc.data.setup
execute store result storage uhc:scenario sky_high.height int 1 run scoreboard players get #height uhc.scenario.sky_high.settings
execute store result storage uhc:scenario sky_high.ender_pearl_gift int 1 run scoreboard players get #ender_pearl_gift uhc.scenario.sky_high.settings
execute store result storage uhc:scenario sky_high.ender_pearl_timer int 1 run scoreboard players get #ender_pearl_timer uhc.scenario.sky_high.settings
