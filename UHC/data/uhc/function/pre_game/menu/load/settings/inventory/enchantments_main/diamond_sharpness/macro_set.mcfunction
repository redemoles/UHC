
#> uhc:pre_game/menu/load/settings/inventory/enchantments_main/diamond_sharpness/macro_set
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#diamond_sharpness","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true}]
data modify storage uhc:settings menu.diamond_sharpness set from block 0 -61 0 front_text.messages[0]
