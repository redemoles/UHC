
#> uhc:in_game/player/misc/info/team/bhc/line
#
# @within			uhc:in_game/player/misc/info/team/bhc/team_selected
#
#
# @description		Reproduction de la grille en texte
#

scoreboard players add #temp_line bhc.data 1
$execute if score #temp_line bhc.data > #line_step$(step) bhc.data run return fail

execute store result storage bhc:temp info.line int 1 run scoreboard players get #temp_line bhc.data
function uhc:in_game/player/misc/info/team/bhc/column with storage bhc:temp info

function uhc:in_game/player/misc/info/team/bhc/line with storage bhc:temp info
