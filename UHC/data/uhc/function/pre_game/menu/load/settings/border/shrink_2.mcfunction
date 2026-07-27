
#> uhc:pre_game/menu/load/settings/border/shrink_2
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

execute if score @s uhc.menu.settings.border matches ..10 if score #shrink_dynamic uhc.data.setup matches 1 run item replace entity @s inventory.11 with minecraft:black_stained_glass[minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={Tags:"settings_border"}]
execute if score @s uhc.menu.settings.border matches 11.. if score #shrink_dynamic uhc.data.setup matches 1 unless score @s uhc.menu.settings.border matches 20..29 run item replace entity @s inventory.2 with minecraft:black_stained_glass[minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={Tags:"settings_border"}]
execute unless score @s uhc.menu.settings.border matches 20..29 run return run function uhc:translation/menu/load/settings/border_main_shrink_2 with storage uhc:settings menu.shrink

function uhc:translation/menu/load/settings/border_shrink_2 with storage uhc:settings menu.shrink
execute if score #shrink_dynamic uhc.data.setup matches 1..1 run item replace entity @s inventory.10 with minecraft:black_stained_glass[minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={Tags:"settings_border"}]
execute if score #shrink_dynamic uhc.data.setup matches 1..2 run item replace entity @s inventory.11 with minecraft:black_stained_glass[minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={Tags:"settings_border"}]
execute if score #shrink_dynamic uhc.data.setup matches 1..1 run item replace entity @s inventory.12 with minecraft:black_stained_glass[minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={Tags:"settings_border"}]
execute if score #shrink_dynamic uhc.data.setup matches 1..2 run item replace entity @s inventory.13 with minecraft:black_stained_glass[minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={Tags:"settings_border"}]
