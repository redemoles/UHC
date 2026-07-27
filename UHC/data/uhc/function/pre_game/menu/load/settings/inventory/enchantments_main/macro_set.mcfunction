
#> uhc:pre_game/menu/load/settings/inventory/enchantments_main/macro_set
#
# @within			hc:pre_game/menu/load/settings/inventory/menu
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#diamond_protection","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true}]
data modify storage uhc:settings menu.diamond_protection set from block 0 -61 0 front_text.messages[0]

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#diamond_sharpness","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true}]
data modify storage uhc:settings menu.diamond_sharpness set from block 0 -61 0 front_text.messages[0]

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#iron_protection","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true}]
data modify storage uhc:settings menu.iron_protection set from block 0 -61 0 front_text.messages[0]

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#iron_sharpness","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true}]
data modify storage uhc:settings menu.iron_sharpness set from block 0 -61 0 front_text.messages[0]

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#axes_sharpness","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true}]
data modify storage uhc:settings menu.axes_sharpness set from block 0 -61 0 front_text.messages[0]

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#bow_power","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true}]
data modify storage uhc:settings menu.power set from block 0 -61 0 front_text.messages[0]
