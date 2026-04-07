
#> uhc:pre_game/menu/selection/scenario/restricted_area/sky_high/enable
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation Sky High
#

execute if score #go_to_hell uhc.scenario matches 1 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Go To Hell","color":"#FFFFFF","bold":false},{"text":" disabled.","color":"#FF3F3F","bold":false}]

scoreboard players set #go_to_hell uhc.scenario 0
scoreboard players add #sky_high uhc.scenario 1
execute if score #sky_high uhc.scenario matches 2 run scoreboard players set #sky_high uhc.scenario 0

execute if score #sky_high uhc.scenario matches 0 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Sky High","color":"#FFFFFF","bold":false},{"text":" disabled.","color":"#FF3F3F","bold":false}]
execute if score #sky_high uhc.scenario matches 1 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Sky High","color":"#FFFFFF","bold":false},{"text":" enabled.","color":"#3FE7FF","bold":false}]

execute if score #sky_high uhc.scenario matches 0 run scoreboard players set @s uhc.menu.scenario.restricted_area 1
execute if score #sky_high uhc.scenario matches 1 run scoreboard players set @s uhc.menu.scenario.restricted_area 2
function uhc:pre_game/menu/load/scenario/restricted_area/main
