
#> uhc:pre_game/menu/load/settings/inventory/items_authorization/cobweb/macro_set
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#cobweb","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true}]
data modify storage uhc:settings menu.cobweb_text set from block 0 -61 0 front_text.messages[0]
execute unless score #cobweb uhc.data.setup matches 1..64 store result storage uhc:settings menu.cobweb_count int 1 run scoreboard players get #01 uhc.data.numbers
execute if score #cobweb uhc.data.setup matches 1..64 store result storage uhc:settings menu.cobweb_count int 1 run scoreboard players get #cobweb uhc.data.setup
