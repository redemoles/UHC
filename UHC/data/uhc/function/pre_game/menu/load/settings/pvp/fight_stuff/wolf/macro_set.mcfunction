
#> uhc:pre_game/menu/load/settings/pvp/fight_stuff/wolf/macro_set
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages[2] set value [{"score":{"name":"#wolf_count","objective":"uhc.data.setup"},"color":"#3FE7FF","bold":true}]
data modify storage uhc:settings interpreted_2 set from block 0 -61 0 front_text.messages[2]
