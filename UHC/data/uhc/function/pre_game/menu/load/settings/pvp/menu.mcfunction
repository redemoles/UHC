
#> uhc:pre_game/menu/load/settings/pvp/menu
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

# Retour
execute in uhc:lobby run function uhc:pre_game/menu/load/settings/pvp/macro_set
execute if score @s uhc.menu.settings.pvp matches 11.. run function uhc:translation/menu/load/settings/main_pvp with storage uhc:settings menu

# PvP Version
function uhc:translation/menu/load/settings/pvp_version

# Équipements de combat
function uhc:translation/menu/load/settings/pvp_main_fight_stuff
execute if score @s uhc.menu.settings.pvp matches 11..20 run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/menu

# No Clean Up
function uhc:translation/menu/load/settings/pvp_no_clean with storage uhc:settings menu

# Absorption
function uhc:translation/menu/load/settings/pvp_absorption
