
#> uhc:pre_game/menu/selection/scenario/enchanting_setup/100
#
# @within			uhc:pre_game/menu/selection/scenario/
#
#
# @description		Activation/Désactivation d'Enchanting Setup sur les coordonnées en 100/-100
#

scoreboard players add #500b uhc.scenario.enchanting_setup 1
execute if score #500b uhc.scenario.enchanting_setup matches 1 run scoreboard players add #enable uhc.scenario.enchanting_setup 1
execute if score #500b uhc.scenario.enchanting_setup matches 2 run scoreboard players remove #enable uhc.scenario.enchanting_setup 1
execute if score #500b uhc.scenario.enchanting_setup matches 2 run scoreboard players set #500b uhc.scenario.enchanting_setup 0

function uhc:translation/menu/selected/scenario_enchanting_setup
execute if score #enable uhc.scenario.enchanting_setup matches 0 run scoreboard players set #enchanting_setup uhc.scenario 0
execute if score #enable uhc.scenario.enchanting_setup matches 1 run scoreboard players set #enchanting_setup uhc.scenario 1
