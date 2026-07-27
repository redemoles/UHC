
#> uhc:pre_game/menu/selected/settings/pvp/absorption/preset_menu
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

scoreboard players set @s uhc.menu.settings 2
execute if score @s uhc.menu.settings.pvp matches ..10 run scoreboard players set @s uhc.menu.settings.pvp 3
execute if score @s uhc.menu.settings.pvp matches 11.. run scoreboard players set @s uhc.menu.settings.pvp 51
function uhc:pre_game/menu/load/settings/menu
