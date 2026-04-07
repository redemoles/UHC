
#> uhc:pre_game/menu/selection/scenario/blood_cycle
#
# @within			uhc:pre_game/menu/load/scenario/blood_diamond/main
#
#
# @description		Activation/Désactivation Blood Cycle
#


scoreboard players add #blood_cycle uhc.scenario 1
execute if score #blood_cycle uhc.scenario matches 2 run scoreboard players set #blood_cycle uhc.scenario 0

execute if score #blood_cycle uhc.scenario matches 0 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Blood Cycle","color":"#FFFFFF","bold":false},{"text":" disabled.","color":"#FF3F3F","bold":false}]
execute if score #blood_cycle uhc.scenario matches 1 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Blood Cycle","color":"#FFFFFF","bold":false},{"text":" enabled.","color":"#3FE7FF","bold":false}]
