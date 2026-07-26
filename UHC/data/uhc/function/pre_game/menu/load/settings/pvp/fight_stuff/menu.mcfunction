
#> uhc:pre_game/menu/load/settings/pvp/fight_stuff/menu
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

execute if score @s uhc.menu.settings.pvp matches 11..20 in uhc:lobby run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/shield/macro_set
execute if score @s uhc.menu.settings.pvp matches 11..20 run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/shield/macro_text with storage uhc:settings menu


execute if score @s uhc.menu.settings.pvp matches 11..20 run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/horse/macro_text

execute if score @s uhc.menu.settings.pvp matches 11..20 in uhc:lobby run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/wolf/macro_set
execute if score @s uhc.menu.settings.pvp matches 11..20 run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/wolf/macro_text with storage uhc:settings menu
