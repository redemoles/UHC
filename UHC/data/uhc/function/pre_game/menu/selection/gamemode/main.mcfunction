
#> uhc:pre_game/menu/selection/gamemode/main
#
# @within			uhc:pre_game/menu/detector/menu
#
#
# @description		Redirection
#

execute unless items entity @s[tag=uhc.menu.gamemode] inventory.1 *[minecraft:custom_data={Tags:"gamemode_bhc"}] run return run function uhc:pre_game/menu/load/gamemode/bhc/main
execute unless items entity @s[tag=uhc.menu.gamemode] inventory.2 *[minecraft:custom_data={Tags:"gamemode_mls"}] run tellraw @s [{"text":"Moles","color":"#E73F3F","bold":true},{"text":" indisponible","color":"#FF3F3F","bold":false}]
execute unless items entity @s[tag=uhc.menu.gamemode] inventory.3 *[minecraft:custom_data={Tags:"gamemode_nzl"}] run tellraw @s [{"text":"Nuzlocke","color":"#3F9FFF","bold":true},{"text":" UHC","color":"#FFE73F","bold":true},{"text":" indisponible","color":"#FF3F3F","bold":false}]

# Réglages
execute if score #nzl uhc.gamemode matches 1 if score #type_start nzl.data matches 0 unless items entity @s[tag=uhc.menu.gamemode] inventory.19 *[minecraft:custom_data={Tags:"gamemode_nzl_evolution"}] run function uhc:pre_game/menu/load/gamemode/nzl/type
execute if score #nzl uhc.gamemode matches 1 if score #type_start nzl.data matches 1 unless items entity @s[tag=uhc.menu.gamemode] inventory.19 *[minecraft:custom_data={Tags:"gamemode_nzl_evolution"}] run function uhc:pre_game/menu/load/gamemode/nzl/type

execute unless items entity @s[tag=uhc.menu.gamemode] inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute if entity @s[tag=uhc.menu.gamemode] run function uhc:pre_game/menu/load/gamemode/menu

execute if score #vanilla uhc.gamemode matches 1 run data modify storage uhc:settings gamemode set value [{"text":"Aucun","color":"#E7E7E7","bold":true}]
