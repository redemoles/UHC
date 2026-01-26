
#> uhc:pre_game/menu/load/settings/pvp/no_clean/macro_set
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#reward_kill_health","objective":"uhc.data.setup"},"color":"#FF3FFF","bold":true}]
data modify storage uhc:settings menu.reward_kill_health set from block 0 -61 0 front_text.messages[0]
