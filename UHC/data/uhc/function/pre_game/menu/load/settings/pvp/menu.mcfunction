
#> uhc:pre_game/menu/load/settings/pvp/menu
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

# Retour
execute in uhc:lobby run function uhc:pre_game/menu/load/settings/pvp/macro_set
function uhc:pre_game/menu/load/settings/pvp/macro_text with storage uhc:settings menu

# PvP Version
execute if score @s uhc.menu.settings.pvp matches 1.. run function uhc:pre_game/menu/load/settings/pvp/version/macro_text

# Équipements de combat
execute if score @s uhc.menu.settings.pvp matches 1.. run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/macro_text
execute if score @s uhc.menu.settings.pvp matches 11..20 run function uhc:pre_game/menu/load/settings/pvp/fight_stuff/menu

# Effets et potions
execute if score @s uhc.menu.settings.pvp matches 1.. run function uhc:pre_game/menu/load/settings/pvp/potion/macro_text
execute if score @s uhc.menu.settings.pvp matches 31..40 run function uhc:pre_game/menu/load/settings/pvp/potion/menu

# No Clean Up
execute if score @s uhc.menu.settings.pvp matches 1.. in uhc:lobby run function uhc:pre_game/menu/load/settings/pvp/no_clean/macro_set
execute if score @s uhc.menu.settings.pvp matches 1.. run function uhc:pre_game/menu/load/settings/pvp/no_clean/macro_text with storage uhc:settings menu

# Absorption
execute if score @s uhc.menu.settings.pvp matches 1.. run function uhc:pre_game/menu/load/settings/pvp/absorption/macro_text
