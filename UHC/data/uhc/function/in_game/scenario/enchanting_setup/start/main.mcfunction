
#> uhc:in_game/scenario/enchanting_setup/start/main
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Enchanting Setup
#

execute if score #100b uhc.scenario.enchanting_setup matches 1 run function uhc:in_game/scenario/enchanting_setup/start/100 with storage uhc:enchanting_setup
execute if score #500b uhc.scenario.enchanting_setup matches 1 run function uhc:in_game/scenario/enchanting_setup/start/500 with storage uhc:enchanting_setup
execute if score #1000b uhc.scenario.enchanting_setup matches 1 run function uhc:in_game/scenario/enchanting_setup/start/1000 with storage uhc:enchanting_setup
