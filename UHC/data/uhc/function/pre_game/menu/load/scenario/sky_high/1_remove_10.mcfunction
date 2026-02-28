
#> uhc:pre_game/menu/load/scenario/sky_high/1_remove_10
#
# @within			uhc:pre_game/menu/selection/settings/host
#
#
# @description		Menu
#

# Timer Sky High
execute if score @s uhc.menu.scenario.sky_high matches 1 if score #sky_high uhc.data.setup matches 1.. run scoreboard players remove #sky_high uhc.data.setup 10
execute if score @s uhc.menu.scenario.sky_high matches 1 if score #sky_high uhc.data.setup matches ..0 run scoreboard players set #sky_high uhc.data.setup 0

# Hauteur Sky High
execute if score @s uhc.menu.scenario.sky_high matches 2 if score #height uhc.scenario.sky_high.settings matches 101.. run scoreboard players remove #height uhc.scenario.sky_high.settings 10
execute if score @s uhc.menu.scenario.sky_high matches 2 if score #height uhc.scenario.sky_high.settings matches ..100 run scoreboard players set #height uhc.scenario.sky_high.settings 100

execute store result storage uhc:scenario sky_high.timer int 1 run scoreboard players get #sky_high uhc.data.setup
execute store result storage uhc:scenario sky_high.height int 1 run scoreboard players get #height uhc.scenario.sky_high.settings
