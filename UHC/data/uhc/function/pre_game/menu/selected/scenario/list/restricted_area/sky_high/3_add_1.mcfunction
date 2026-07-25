
#> uhc:pre_game/menu/selection/scenario/list/restricted_area/sky_high/3_add_1
#
# @within			uhc:pre_game/menu/selection/settings/host
#
#
# @description		Menu
#

# Timer Sky High
execute if score @s uhc.menu.scenario.restricted_area matches 3 if score #sky_high uhc.data.setup matches ..179 run scoreboard players add #sky_high uhc.data.setup 1


# Hauteur Sky High
execute if score @s uhc.menu.scenario.restricted_area matches 4 if score #height uhc.scenario.sky_high.settings matches ..199 run scoreboard players add #height uhc.scenario.sky_high.settings 1


# Don d'enderpearl
execute if score @s uhc.menu.scenario.restricted_area matches 5 if score #ender_pearl_gift uhc.scenario.sky_high.settings matches ..99 run scoreboard players add #ender_pearl_gift uhc.scenario.sky_high.settings 1


# Temps entre chaque don d'enderpearl
execute if score @s uhc.menu.scenario.restricted_area matches 6 if score #ender_pearl_timer uhc.scenario.sky_high.settings matches ..59 run scoreboard players add #ender_pearl_timer uhc.scenario.sky_high.settings 1


execute store result storage uhc:scenario sky_high.timer int 1 run scoreboard players get #sky_high uhc.data.setup
execute store result storage uhc:scenario sky_high.height int 1 run scoreboard players get #height uhc.scenario.sky_high.settings
execute store result storage uhc:scenario sky_high.ender_pearl_gift int 1 run scoreboard players get #ender_pearl_gift uhc.scenario.sky_high.settings
execute store result storage uhc:scenario sky_high.ender_pearl_timer int 1 run scoreboard players get #ender_pearl_timer uhc.scenario.sky_high.settings
