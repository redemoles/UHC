
#> uhc:pre_game/menu/load/gamemode/bhc/settings/bingo_b/macro_set
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages set value [{"score":{"name":"#stepb_start","objective":"bhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#stepb_end","objective":"bhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},"",""]
data modify block 0 -61 0 front_text.messages[2] set value {"score":{"name":"#stepb_exhaustion","objective":"bhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false}
data modify storage uhc:settings menu.stepb.start set from block 0 -61 0 front_text.messages[0]
data modify storage uhc:settings menu.stepb.end set from block 0 -61 0 front_text.messages[1]
data modify storage uhc:settings menu.stepb.exhaustion set from block 0 -61 0 front_text.messages[2]
