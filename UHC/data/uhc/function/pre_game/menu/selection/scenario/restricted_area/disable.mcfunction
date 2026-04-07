
#> uhc:pre_game/menu/selection/scenario/restricted_area/disabled
#
# @within			uhc:pre_game/menu/selection/scenario/pages/*
#			
#
# @description		Redirection
#

execute if score #go_to_hell uhc.scenario matches 1 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Go To Hell","color":"#FFFFFF","bold":false},{"text":" disabled.","color":"#FF3F3F","bold":false}]
execute if score #sky_high uhc.scenario matches 1 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Sky High","color":"#FFFFFF","bold":false},{"text":" disabled.","color":"#FF3F3F","bold":false}]

scoreboard players set #go_to_hell uhc.scenario 0
scoreboard players set #sky_high uhc.scenario 0

scoreboard players set @s uhc.menu.scenario.restricted_area 1
