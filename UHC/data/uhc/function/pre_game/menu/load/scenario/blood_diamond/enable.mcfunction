
#> uhc:pre_game/menu/load/scenario/blood_diamond
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation Blood Diamond
#


scoreboard players add #blood_diamond uhc.scenario 1
execute if score #blood_diamond uhc.scenario matches 3 run scoreboard players set #blood_diamond uhc.scenario 0

execute if score #blood_diamond uhc.scenario matches 0 run tellraw @a [{"text":"Blood Diamond","color":"#FF3F3F","bold":true},{"text":" désactivé","color":"#FF3F3F","bold":false}]
execute if score #blood_diamond uhc.scenario matches 1 run tellraw @a [{"text":"Blood Diamond","color":"#3FE7FF","bold":true},{"text":" activé","color":"#3FE7FF","bold":false}]
