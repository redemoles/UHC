
#> uhc:pre_game/menu/load/settings/pvp/fight_stuff/wolf/macro_set
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#wolf_count","objective":"uhc.data.setup"},"color":"#3FE7FF","bold":true}]
data modify storage uhc:settings menu.wolf_limit set from block 0 -61 0 front_text.messages[0]
