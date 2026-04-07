
#> uhc:pre_game/menu/selection/scenario/best_pve
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation Best PvE
#


scoreboard players add #best_pve uhc.scenario 1
execute if score #best_pve uhc.scenario matches 2 run scoreboard players set #best_pve uhc.scenario 0

execute if score #best_pve uhc.scenario matches 0 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Best PvE","color":"#FFFFFF","bold":false},{"text":" disabled.","color":"#FF3F3F","bold":false}]
execute if score #best_pve uhc.scenario matches 1 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Best PvE","color":"#FFFFFF","bold":false},{"text":" enabled.","color":"#3FE7FF","bold":false}]
