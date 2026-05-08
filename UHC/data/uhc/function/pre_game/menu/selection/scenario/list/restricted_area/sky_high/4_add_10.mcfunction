
#> uhc:pre_game/menu/selection/scenario/list/restricted_area/sky_high/4_add_10
#
# @within			uhc:pre_game/menu/selection/settings/host
#
#
# @description		Menu
#

# Timer Sky High
execute if score @s uhc.menu.scenario.restricted_area matches 3 if score #sky_high uhc.data.setup matches ..179 run scoreboard players add #sky_high uhc.data.setup 10
execute if score @s uhc.menu.scenario.restricted_area matches 3 if score #sky_high uhc.data.setup matches 180.. run scoreboard players set #sky_high uhc.data.setup 180

# Hauteur Sky High
execute if score @s uhc.menu.scenario.restricted_area matches 4 if score #height uhc.scenario.sky_high.settings matches ..199 run scoreboard players add #height uhc.scenario.sky_high.settings 10
execute if score @s uhc.menu.scenario.restricted_area matches 4 if score #height uhc.scenario.sky_high.settings matches 200.. run scoreboard players set #height uhc.scenario.sky_high.settings 200

execute store result storage uhc:scenario sky_high.timer int 1 run scoreboard players get #sky_high uhc.data.setup
execute store result storage uhc:scenario sky_high.height int 1 run scoreboard players get #height uhc.scenario.sky_high.settings
