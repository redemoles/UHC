
#> uhc:pre_game/menu/load/settings/pvp/team_stuff/menu
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score @s uhc.menu.settings.pvp matches 21..30 run function uhc:pre_game/menu/load/settings/pvp/team_stuff/friendly_fire/macro_text
execute if score @s uhc.menu.settings.pvp matches 21..30 run function uhc:pre_game/menu/load/settings/pvp/team_stuff/tracker_allies/macro_text
