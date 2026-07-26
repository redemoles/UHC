
#> uhc:pre_game/menu/load/settings/inventory/enchantments_secondary/depth_strider/macro_set
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#depth_strider","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true}]
data modify storage uhc:settings menu.depth_strider set from block 0 -61 0 front_text.messages[0]
