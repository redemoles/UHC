
#> uhc:pre_game/menu/load/settings/border/shrink_height/macro_set
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages set value [{"score":{"name":"#map_height_limit_above","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#map_height_limit_below","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#map_height_timer","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},""]
data modify storage uhc:settings menu.shrink.height_y_max set from block 0 -61 0 front_text.messages[0]
data modify storage uhc:settings menu.shrink.height_y_min set from block 0 -61 0 front_text.messages[1]
data modify storage uhc:settings menu.shrink.height_y_timer set from block 0 -61 0 front_text.messages[2]
