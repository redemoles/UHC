
#> uhc:pre_game/menu/selection/start
#
# @within			uhc:pre_game/menu/detector/menu
#
#
# @description		Redirection
#

execute unless items entity @s[tag=uhc.menu.start] inventory.12 *[minecraft:custom_data={Tags:"start"}] run function uhc:start/
execute unless items entity @s[tag=uhc.menu.start] inventory.14 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute if entity @s[tag=uhc.menu.start] run function uhc:pre_game/menu/load/start/menu
