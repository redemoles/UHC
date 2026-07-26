
#> uhc:pre_game/menu/load/settings/inventory/enchantments_main/iron_protection/macro_set
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#iron_protection","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true}]
data modify storage uhc:settings menu.iron_protection set from block 0 -61 0 front_text.messages[0]
