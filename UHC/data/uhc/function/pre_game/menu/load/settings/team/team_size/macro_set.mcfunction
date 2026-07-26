
#> uhc:pre_game/menu/load/settings/team/team_size/macro_set
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

data modify block 0 -61 0 front_text.messages[0] set value [{"score":{"name":"#team_size","objective":"uhc.data.setup"},"color":"#FFFFFF","bold":true}]
data modify storage uhc:settings menu.team_size_text set from block 0 -61 0 front_text.messages[0]
execute store result storage uhc:settings menu.team_size_count int 1 run scoreboard players get #team_size uhc.data.setup
