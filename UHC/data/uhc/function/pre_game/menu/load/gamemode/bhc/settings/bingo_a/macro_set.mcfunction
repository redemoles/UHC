
#> uhc:pre_game/menu/load/gamemode/bhc/settings/bingo_a/macro_set
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages set value [{"score":{"name":"#stepa_start","objective":"bhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},{"score":{"name":"#stepa_end","objective":"bhc.data.setup"},"color":"#FF3F3F","bold":true,"italic":false},"",""]
data modify storage uhc:settings menu.stepa.start set from block 0 -61 0 front_text.messages[0]
data modify storage uhc:settings menu.stepa.end set from block 0 -61 0 front_text.messages[1]
