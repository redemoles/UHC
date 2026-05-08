
#> uhc:pre_game/menu/selection/scenario/list/restricted_area/go_to_hell/enable
#
# @within			uhc:pre_game/menu/selection/scenario/list/
#
#
# @description		Activation/Désactivation Go To Hell
#

execute if score #sky_high uhc.scenario matches 1 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Sky High","color":"#FFFFFF","bold":false},{"text":" disabled.","color":"#FF3F3F","bold":false}]

scoreboard players set #sky_high uhc.scenario 0
scoreboard players add #go_to_hell uhc.scenario 1
execute if score #go_to_hell uhc.scenario matches 2 run scoreboard players set #go_to_hell uhc.scenario 0

data modify storage uhc:temp scenario set value {"internal":"go_to_hell","chat":"Go To Hell"}
function uhc:translation/menu/selected/scenario_general with storage uhc:temp scenario

execute if score #go_to_hell uhc.scenario matches 0 run scoreboard players set @s uhc.menu.scenario.restricted_area 1
execute if score #go_to_hell uhc.scenario matches 1 run scoreboard players set @s uhc.menu.scenario.restricted_area 2
function uhc:pre_game/menu/load/scenario/restricted_area/main
