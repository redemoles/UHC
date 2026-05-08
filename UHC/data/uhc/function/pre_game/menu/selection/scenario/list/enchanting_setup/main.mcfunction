
#> uhc:pre_game/menu/selection/scenario/list/enchanting_setup/main
#
# @within			uhc:pre_game/menu/selection/scenario/pages/1
#			
#
# @description		Redirection
#


execute unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"enchanting_setup"}] run function uhc:pre_game/menu/selection/scenario/list/enchanting_setup/100
execute unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"enchanting_setup"}] run function uhc:pre_game/menu/selection/scenario/list/enchanting_setup/500
execute unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"enchanting_setup"}] run function uhc:pre_game/menu/selection/scenario/list/enchanting_setup/1000

execute unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/scenario/pages/1/main
function uhc:pre_game/menu/load/scenario/enchanting_setup/main
