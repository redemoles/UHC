
#> uhc:pre_game/menu/selection/lobby/main
#
# @within			uhc:pre_game/menu/detector/menu
#
#
# @description		Redirection
#

execute if score #loaded lobby.structure.data matches 1 unless score #lobby lobby.structure.data matches 11 unless items entity @s[tag=uhc.menu.lobby] inventory.1 *[minecraft:custom_data={"Tags":"lobby"}] run function uhc:pre_game/menu/selection/lobby/11
execute if score #loaded lobby.structure.data matches 1 unless score #lobby lobby.structure.data matches 12 unless items entity @s[tag=uhc.menu.lobby] inventory.2 *[minecraft:custom_data={"Tags":"lobby"}] run function uhc:pre_game/menu/selection/lobby/12
execute if score #loaded lobby.structure.data matches 1 unless score #lobby lobby.structure.data matches 30 unless items entity @s[tag=uhc.menu.lobby] inventory.10 *[minecraft:custom_data={"Tags":"lobby"}] run function uhc:pre_game/menu/selection/lobby/30
execute unless items entity @s[tag=uhc.menu.lobby] inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute if entity @s[tag=uhc.menu.lobby] run function uhc:pre_game/menu/load/lobby/main
