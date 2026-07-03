
#> uhc:pre_game/menu/selection/gamemode/main
#
# @within			uhc:pre_game/menu/detector/menu
#
#
# @description		Redirection
#

execute unless items entity @s[tag=uhc.menu.gamemode] inventory.1 *[minecraft:custom_data={Tags:"gamemode_bhc"}] run return run function uhc:pre_game/menu/load/gamemode/bhc/main
#execute unless items entity @s[tag=uhc.menu.gamemode] inventory.2 *[minecraft:custom_data={Tags:"gamemode_mls"}] run tellraw @s [{"text":"Moles","color":"#E73F3F","bold":true},{"text":" indisponible","color":"#FF3F3F","bold":false}]
#execute unless items entity @s[tag=uhc.menu.gamemode] inventory.3 *[minecraft:custom_data={Tags:"gamemode_switch"}] run tellraw @s [{"text":"Switch","color":"#6F3FFF","bold":true},{"text":" indisponible","color":"#FF3F3F","bold":false}]

execute unless items entity @s[tag=uhc.menu.gamemode] inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute if entity @s[tag=uhc.menu.gamemode] run function uhc:pre_game/menu/load/gamemode/main

execute if score #vanilla uhc.gamemode matches 1 run function uhc:translation/menu/selected/gamemode_text_main
