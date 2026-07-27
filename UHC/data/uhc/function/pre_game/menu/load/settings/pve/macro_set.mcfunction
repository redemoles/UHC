
#> uhc:pre_game/menu/load/settings/pve/macro_set
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#lives","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true}]
data modify storage uhc:settings menu.lives set from block 0 -61 0 front_text.messages[0]

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#1_life_left","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true}]
data modify storage uhc:settings menu.1_life_left set from block 0 -61 0 front_text.messages[0]

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#2_lives_left","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true}]
data modify storage uhc:settings menu.2_lives_left set from block 0 -61 0 front_text.messages[0]
