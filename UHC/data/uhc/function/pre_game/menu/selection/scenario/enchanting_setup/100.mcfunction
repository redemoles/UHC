
#> uhc:pre_game/menu/selection/scenario/enchanting_setup/100
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation d'Enchanting Setup sur les coordonnées en 100/-100
#

scoreboard players add #100b uhc.scenario.enchanting_setup 1
execute if score #100b uhc.scenario.enchanting_setup matches 1 run scoreboard players add #enable uhc.scenario.enchanting_setup 1
execute if score #100b uhc.scenario.enchanting_setup matches 2 run scoreboard players remove #enable uhc.scenario.enchanting_setup 1
execute if score #100b uhc.scenario.enchanting_setup matches 2 run scoreboard players set #100b uhc.scenario.enchanting_setup 0

execute if score #enable uhc.scenario.enchanting_setup matches 0 if score #enchanting_setup uhc.scenario matches 1 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Enchanting Setup","color":"#FFFFFF","bold":false},{"text":" disabled.","color":"#FF3F3F","bold":false}]
execute if score #enable uhc.scenario.enchanting_setup matches 1 if score #enchanting_setup uhc.scenario matches 0 if score #mystery_scenarios uhc.data.setup matches 0 run tellraw @a [{"text":"Scenarios ","color":"#FFE73F"},{"text":">","color":"#9F9F9F","bold":true},{"text":" Enchanting Setup","color":"#FFFFFF","bold":false},{"text":" enabled.","color":"#3FE7FF","bold":false}]
execute if score #enable uhc.scenario.enchanting_setup matches 0 run scoreboard players set #enchanting_setup uhc.scenario 0
execute if score #enable uhc.scenario.enchanting_setup matches 1 run scoreboard players set #enchanting_setup uhc.scenario 1
