
#> uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_armor/macro_set
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#item_additional_armor","objective":"uhc.data.setup"},"color":"#FF3F3F","bold":true}]
data modify storage uhc:settings menu.item_additional_armor set from block 0 -61 0 front_text.messages[0]
