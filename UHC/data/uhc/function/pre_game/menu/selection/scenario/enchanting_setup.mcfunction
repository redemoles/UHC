
#> uhc:pre_game/menu/selection/scenario/enchanting_setup
#
# @within			uhc:pre_game/menu/selection/scenario/1
#			
#
# @description		Redirection
#


execute unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"enchanting_setup"}] run function uhc:pre_game/menu/load/scenario/enchanting_setup/100
execute unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"enchanting_setup"}] run function uhc:pre_game/menu/load/scenario/enchanting_setup/500
execute unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"enchanting_setup"}] run function uhc:pre_game/menu/load/scenario/enchanting_setup/1000

execute unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/scenario/1
function uhc:pre_game/menu/load/scenario/enchanting_setup/
