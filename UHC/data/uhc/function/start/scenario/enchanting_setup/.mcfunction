
#> uhc:start/scenario/enchanting_setup/
#
# @within			uhc:start/setup_players
#
#
# @description		Positionnement des tables d'enchantements
#

execute if score #100b uhc.scenario.enchanting_setup matches 1 run function uhc:start/scenario/enchanting_setup/100
execute if score #500b uhc.scenario.enchanting_setup matches 1 run function uhc:start/scenario/enchanting_setup/500
execute if score #1000b uhc.scenario.enchanting_setup matches 1 run function uhc:start/scenario/enchanting_setup/1000

kill @s
