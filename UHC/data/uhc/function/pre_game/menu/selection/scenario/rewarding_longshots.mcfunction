
#> uhc:pre_game/menu/selection/scenario/rewarding_longshots
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation Rewarding Longshots
#


scoreboard players add #rewarding_longshots uhc.scenario 1
execute if score #rewarding_longshots uhc.scenario matches 2 run scoreboard players set #rewarding_longshots uhc.scenario 0

execute if score #rewarding_longshots uhc.scenario matches 0 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Rewarding Longshots","color":"#FFFFFF","bold":false},{"text":" disabled.","color":"#FF3F3F","bold":false}]
execute if score #rewarding_longshots uhc.scenario matches 1 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Rewarding Longshots","color":"#FFFFFF","bold":false},{"text":" enabled.","color":"#3FE7FF","bold":false}]
