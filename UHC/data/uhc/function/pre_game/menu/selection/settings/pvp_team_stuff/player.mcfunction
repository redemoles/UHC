
#> uhc:pre_game/menu/selection/settings/pvp_fight_stuff/player
#
# @within			uhc:pre_game/menu/selection/settings/player
# 
#
# @description		Redirection
#


execute unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"settings_pvp_fight_stuff"}] run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/preset_menu
execute unless items entity @s inventory.3 *[minecraft:custom_data={Tags:"settings_pvp_potion"}] run function uhc:pre_game/menu/load/settings/pvp/potion/preset_menu
execute unless items entity @s inventory.4 *[minecraft:custom_data={Tags:"settings_pvp_team_stuff"}] run return run function uhc:pre_game/menu/load/settings/pvp/preset_menu


execute unless items entity @s inventory.24 *[minecraft:custom_data={Tags:"settings_pvp"}] run return run function uhc:pre_game/menu/load/settings/pvp/preset_menu

execute if score @s uhc.menu.settings matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/player/main
execute if score @s uhc.menu.settings matches 1.. run function uhc:pre_game/menu/load/settings/menu
