
#> uhc:pre_game/menu/selection/scenario/blood_diamond/enable_traditional_mode
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation Blood Diamond
#

execute if score #blood_diamond uhc.scenario matches 2 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Blood Diamond","color":"#FFFFFF","bold":false},{"text":" disabled.","color":"#FF3F3F","bold":false}]
execute if score #blood_diamond uhc.scenario matches 0 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Blood Diamond","color":"#FFFFFF","bold":false},{"text":" enabled.","color":"#3FE7FF","bold":false}]

execute if score #blood_diamond uhc.scenario matches 2 run return run scoreboard players set #blood_diamond uhc.scenario 0
scoreboard players set #blood_diamond uhc.scenario 2
