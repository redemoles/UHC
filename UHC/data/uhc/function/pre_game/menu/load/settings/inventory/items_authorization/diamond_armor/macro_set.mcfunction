
#> uhc:pre_game/menu/load/settings/inventory/items_authorization/diamond_armor/macro_set
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#diamond_armor","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true}]
data modify storage uhc:settings menu.diamond_armor_text set from block 0 -61 0 front_text.messages[0]
execute unless score #diamond_armor uhc.data.setup matches 1..4 store result storage uhc:settings menu.diamond_armor_count int 1 run scoreboard players get #01 uhc.data.numbers
execute if score #diamond_armor uhc.data.setup matches 1..4 store result storage uhc:settings menu.diamond_armor_count int 1 run scoreboard players get #diamond_armor uhc.data.setup
