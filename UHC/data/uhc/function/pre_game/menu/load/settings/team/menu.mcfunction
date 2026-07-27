
#> uhc:pre_game/menu/load/settings/team/menu
#
# @within			uhc:pre_game/menu/selected/main/host/main
#
#
# @description		Menu
#

execute in uhc:lobby run function uhc:pre_game/menu/load/settings/team/macro_set
function uhc:translation/menu/load/settings/team_menu with storage uhc:settings menu

execute if score #random_team uhc.data.setup matches 0 run item replace entity @s[tag=uhc.host] inventory.12 with minecraft:gray_stained_glass[minecraft:tooltip_display={"hide_tooltip":true}]
execute if score #random_team uhc.data.setup matches 0 if entity @s[tag=uhc.host] run item replace entity @s inventory.13 with minecraft:black_stained_glass[minecraft:tooltip_display={"hide_tooltip":true}]

execute if score @s uhc.menu.settings.team matches 2 run item replace entity @s inventory.20 with minecraft:purple_concrete[minecraft:item_name=[{"text":"-4","color":"#CF3F3F","italic":false}],minecraft:custom_data={Tags:"-10"}]
execute if score @s uhc.menu.settings.team matches 2 run item replace entity @s inventory.21 with minecraft:magenta_concrete[minecraft:item_name=[{"text":"-1","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"-1"}]
execute if score @s uhc.menu.settings.team matches 2 run item replace entity @s inventory.23 with minecraft:light_blue_concrete[minecraft:item_name=[{"text":"+1","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"+1"}]
execute if score @s uhc.menu.settings.team matches 2 run item replace entity @s inventory.24 with minecraft:cyan_concrete[minecraft:item_name=[{"text":"+4","color":"#3FCFCF","italic":false}],minecraft:custom_data={Tags:"+10"}]
