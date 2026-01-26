
#> uhc:pre_game/menu/load/gamemode/mls/teams_of_moles/macro_set
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#amount_team","objective":"mls.data.team"},"color":"#FF3F3F","bold":true}]
data modify storage uhc:settings mls.teams_of_moles set from block 0 -61 0 front_text.messages[0]
