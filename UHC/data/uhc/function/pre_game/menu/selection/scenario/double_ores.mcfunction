
#> uhc:pre_game/menu/selection/scenario/double_ores
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation Doubles Ores
#


scoreboard players add #double_ores uhc.scenario 1
execute if score #double_ores uhc.scenario matches 2 run scoreboard players set #double_ores uhc.scenario 0

execute if score #double_ores uhc.scenario matches 0 run tellraw @a [{"text":"Doubles Ores","color":"#FF3F3F","bold":true},{"text":" désactivé","color":"#FF3F3F","bold":false}]
execute if score #double_ores uhc.scenario matches 1 run tellraw @a [{"text":"Doubles Ores","color":"#3FE7FF","bold":true},{"text":" activé","color":"#3FE7FF","bold":false}]
