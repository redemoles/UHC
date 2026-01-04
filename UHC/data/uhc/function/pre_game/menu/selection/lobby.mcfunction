
#> uhc:pre_game/menu/selection/lobby
#
# @within			uhc:pre_game/menu/detector/menu
#
#
# @description		Redirection
#

execute if score #loaded lobby.structure.data matches 1 unless score #lobby lobby.structure.data matches 11 unless items entity @s[tag=uhc.menu.lobby] inventory.1 *[minecraft:custom_data={"Tags":"lobby_11"}] run function uhc:pre_game/menu/load/lobby/11
execute if score #loaded lobby.structure.data matches 1 unless score #lobby lobby.structure.data matches 12 unless items entity @s[tag=uhc.menu.lobby] inventory.2 *[minecraft:custom_data={"Tags":"lobby_12"}] run function uhc:pre_game/menu/load/lobby/12
execute unless items entity @s[tag=uhc.menu.lobby] inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute if entity @s[tag=uhc.menu.lobby] run function uhc:pre_game/menu/load/lobby/
