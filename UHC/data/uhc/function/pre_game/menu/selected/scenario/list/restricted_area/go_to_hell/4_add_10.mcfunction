
#> uhc:pre_game/menu/selected/scenario/list/restricted_area/go_to_hell/4_add_10
#
# @within			uhc:pre_game/menu/selected/settings/host
#
#
# @description		Menu
#

# Timer Go To Hell
execute if score @s uhc.menu.scenario.restricted_area matches 3 if score #go_to_hell uhc.data.setup matches ..179 run scoreboard players add #go_to_hell uhc.data.setup 10
execute if score @s uhc.menu.scenario.restricted_area matches 3 if score #go_to_hell uhc.data.setup matches 180.. run scoreboard players set #go_to_hell uhc.data.setup 180

execute store result storage uhc:scenario go_to_hell.timer int 1 run scoreboard players get #go_to_hell uhc.data.setup
execute store result storage uhc:scenario go_to_hell.height int 1 run scoreboard players get #height uhc.scenario.go_to_hell.settings
