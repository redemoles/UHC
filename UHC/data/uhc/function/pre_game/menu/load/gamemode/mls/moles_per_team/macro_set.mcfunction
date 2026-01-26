
#> uhc:pre_game/menu/load/gamemode/mls/moles_per_team/macro_set
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#amount_moles","objective":"mls.data.team"},"color":"#FF3F3F","bold":true}]
data modify storage uhc:settings mls.moles_per_game set from block 0 -61 0 front_text.messages[0]
