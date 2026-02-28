
#> uhc:pre_game/menu/load/scenario/go_to_hell/3_add_1
#
# @within			uhc:pre_game/menu/selection/settings/host
#
#
# @description		Menu
#

# Timer Go To Hell
execute if score @s uhc.menu.scenario.go_to_hell matches 1 if score #go_to_hell uhc.data.setup matches ..179 run scoreboard players add #go_to_hell uhc.data.setup 1


execute store result storage uhc:scenario go_to_hell.timer int 1 run scoreboard players get #go_to_hell uhc.data.setup
execute store result storage uhc:scenario go_to_hell.height int 1 run scoreboard players get #height uhc.scenario.go_to_hell.settings
