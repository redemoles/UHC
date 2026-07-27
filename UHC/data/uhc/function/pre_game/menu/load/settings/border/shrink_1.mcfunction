
#> uhc:pre_game/menu/load/settings/border/shrink_1
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#



execute unless score @s uhc.menu.settings.border matches 10..19 run return run function uhc:translation/menu/load/settings/border_main_shrink_1 with storage uhc:settings menu.shrink

function uhc:translation/menu/load/settings/border_shrink_1 with storage uhc:settings menu.shrink

execute if score #shrink_dynamic uhc.data.setup matches 1 run item replace entity @s inventory.11 with minecraft:black_stained_glass[minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={Tags:"settings_border"}]

execute if score #shrink_dynamic uhc.data.setup matches 1 run item replace entity @s inventory.13 with minecraft:black_stained_glass[minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={Tags:"settings_border"}]
