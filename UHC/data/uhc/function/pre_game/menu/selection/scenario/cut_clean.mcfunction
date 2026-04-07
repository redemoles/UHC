
#> uhc:pre_game/menu/selection/scenario/cut_clean
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation Cut Clean
#


scoreboard players add #cut_clean uhc.scenario 1
execute if score #cut_clean uhc.scenario matches 2 run scoreboard players set #cut_clean uhc.scenario 0

execute if score #cut_clean uhc.scenario matches 0 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Cut Clean","color":"#FFFFFF","bold":false},{"text":" disabled.","color":"#FF3F3F","bold":false}]
execute if score #cut_clean uhc.scenario matches 1 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Cut Clean","color":"#FFFFFF","bold":false},{"text":" enabled.","color":"#3FE7FF","bold":false}]
