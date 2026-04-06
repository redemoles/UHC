
#> uhc:pre_game/menu/selection/scenario/go_to_hell/2_remove_1
#
# @within			uhc:pre_game/menu/selection/settings/host
#
#
# @description		Menu
#

# Timer Go To Hell
execute if score @s uhc.menu.scenario.go_to_hell matches 1 if score #go_to_hell uhc.data.setup matches 1.. run scoreboard players remove #go_to_hell uhc.data.setup 1


execute store result storage uhc:scenario go_to_hell.timer int 1 run scoreboard players get #go_to_hell uhc.data.setup
execute store result storage uhc:scenario go_to_hell.height int 1 run scoreboard players get #height uhc.scenario.go_to_hell.settings
