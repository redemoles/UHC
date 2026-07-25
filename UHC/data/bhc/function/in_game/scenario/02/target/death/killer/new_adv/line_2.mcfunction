
#> bhc:in_game/scenario/02/target/death/killer/new_adv/line_2
#
# @within			bhc:in_game/scenario/02/target/death/killer/new_adv/line_1
#
#
# @description		Nouvelle case pour l'assassin 
#

$data modify storage bhc:temp new_adv.selected.line set from storage bhc:temp new_adv.line.number[$(random)]
function bhc:in_game/scenario/02/target/death/killer/new_adv/column with storage bhc:temp new_adv.selected

execute if score #success bhc.data.temp matches 1 run return fail

# Si la case n'est pas valide
$data remove storage bhc:temp new_adv.line.number[$(random)]
scoreboard players remove #temp_line_enabled bhc.data 1

data modify storage bhc:temp new_adv.line.enabled set value 0
execute store result storage bhc:temp new_adv.line.enabled int 1 run scoreboard players get #temp_line_enabled bhc.data

function bhc:in_game/scenario/02/target/death/killer/new_adv/line_1 with storage bhc:temp new_adv.line
