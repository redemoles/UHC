
#> uhc:pre_game/menu/load/settings/pve/menu
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

execute if score @s uhc.menu.settings.pve matches 1.. in uhc:lobby run function uhc:pre_game/menu/load/settings/pve/lives_number/macro_set
execute if score @s uhc.menu.settings.pve matches 1.. run function uhc:pre_game/menu/load/settings/pve/lives_number/macro_text with storage uhc:settings menu

execute if score @s uhc.menu.settings.pve matches 1.. in uhc:lobby run function uhc:pre_game/menu/load/settings/pve/1_life_left/macro_set
execute if score @s uhc.menu.settings.pve matches 1.. run function uhc:pre_game/menu/load/settings/pve/1_life_left/macro_text with storage uhc:settings menu

execute if score @s uhc.menu.settings.pve matches 1.. in uhc:lobby run function uhc:pre_game/menu/load/settings/pve/2_lives_left/macro_set
execute if score @s uhc.menu.settings.pve matches 1.. run function uhc:pre_game/menu/load/settings/pve/2_lives_left/macro_text with storage uhc:settings menu
