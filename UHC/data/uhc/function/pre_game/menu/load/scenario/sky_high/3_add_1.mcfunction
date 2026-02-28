
#> uhc:pre_game/menu/load/scenario/sky_high/3_add_1
#
# @within			uhc:pre_game/menu/selection/settings/host
#
#
# @description		Menu
#

# Timer Sky High
execute if score @s uhc.menu.scenario.sky_high matches 1 if score #sky_high uhc.data.setup matches ..179 run scoreboard players add #sky_high uhc.data.setup 1


# Hauteur Sky High
execute if score @s uhc.menu.scenario.sky_high matches 2 if score #height uhc.scenario.sky_high.settings matches ..199 run scoreboard players add #height uhc.scenario.sky_high.settings 1


execute store result storage uhc:scenario sky_high.timer int 1 run scoreboard players get #sky_high uhc.data.setup
execute store result storage uhc:scenario sky_high.height int 1 run scoreboard players get #height uhc.scenario.sky_high.settings
