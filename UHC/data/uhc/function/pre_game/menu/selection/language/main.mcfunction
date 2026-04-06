
#> uhc:pre_game/menu/selection/language/main
#
# @within			uhc:pre_game/menu/detector/menu
#
#
# @description		Redirection
#

execute unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"lang_fra"}] run scoreboard players set @s uhc.player.lang 061801
execute unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"lang_eng"}] run scoreboard players set @s uhc.player.lang 051407
execute unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute if score @s uhc.menu.language matches 1.. run function uhc:pre_game/menu/load/language/main
