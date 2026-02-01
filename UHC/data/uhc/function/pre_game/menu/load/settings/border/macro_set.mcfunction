
#> uhc:pre_game/menu/load/settings/border/macro_set
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#shrink_1_size_start","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false}]
data modify storage uhc:settings menu.shrink.1_size_start set from block 0 -61 0 front_text.messages[0]
