
#> uhc:pre_game/menu/selection/scenario/hastey_boys
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation Hastey Boys
#


scoreboard players add #hastey_boys uhc.scenario 1
execute if score #hastey_boys uhc.scenario matches 2 run scoreboard players set #hastey_boys uhc.scenario 0

execute if score #hastey_boys uhc.scenario matches 0 run tellraw @a [{"text":"Hastey Boys","color":"#FF3F3F","bold":true},{"text":" désactivé","color":"#FF3F3F","bold":false}]
execute if score #hastey_boys uhc.scenario matches 1 run tellraw @a [{"text":"Hastey Boys","color":"#3FE7FF","bold":true},{"text":" activé","color":"#3FE7FF","bold":false}]
