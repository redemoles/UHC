
#> uhc:pre_game/menu/selection/scenario/no_fall
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation No Fall
#


scoreboard players add #no_fall uhc.scenario 1
execute if score #no_fall uhc.scenario matches 2 run scoreboard players set #no_fall uhc.scenario 0

execute if score #no_fall uhc.scenario matches 0 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" No Fall","color":"#FFFFFF","bold":false},{"text":" disabled.","color":"#FF3F3F","bold":false}]
execute if score #no_fall uhc.scenario matches 1 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" No Fall","color":"#FFFFFF","bold":false},{"text":" enabled.","color":"#3FE7FF","bold":false}]
