
#> uhc:pre_game/menu/load/gamemode/mls/supermoles_per_team/macro_set
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages[2] set value [{"score":{"name":"#amount_supermoles","objective":"mls.data.team"},"color":"#FF3F3F","bold":true}]
data modify storage uhc:settings interpreted_2 set from block 0 -61 0 front_text.messages[2]
