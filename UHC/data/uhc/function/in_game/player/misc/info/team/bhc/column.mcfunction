
#> uhc:in_game/player/misc/info/team/bhc/column
#
# @within			uhc:in_game/player/misc/info/team/bhc/line
#
#
# @description		Reproduction de la grille en texte
#

$execute unless score @s bhc.bingo_$(bingo)$(step)_$(line)_1 matches 0.. run data modify storage bhc:temp info.prefix_1 set value "--"
$execute unless score @s bhc.bingo_$(bingo)$(step)_$(line)_2 matches 0.. run data modify storage bhc:temp info.prefix_2 set value "--"
$execute unless score @s bhc.bingo_$(bingo)$(step)_$(line)_3 matches 0.. run data modify storage bhc:temp info.prefix_3 set value "--"
$execute unless score @s bhc.bingo_$(bingo)$(step)_$(line)_4 matches 0.. run data modify storage bhc:temp info.prefix_4 set value "--"
$execute unless score @s bhc.bingo_$(bingo)$(step)_$(line)_5 matches 0.. run data modify storage bhc:temp info.prefix_5 set value "--"
$execute unless score @s bhc.bingo_$(bingo)$(step)_$(line)_6 matches 0.. run data modify storage bhc:temp info.prefix_6 set value "--"
$execute unless score @s bhc.bingo_$(bingo)$(step)_$(line)_7 matches 0.. run data modify storage bhc:temp info.prefix_7 set value "--"
$execute unless score @s bhc.bingo_$(bingo)$(step)_$(line)_8 matches 0.. run data modify storage bhc:temp info.prefix_8 set value "--"
$execute unless score @s bhc.bingo_$(bingo)$(step)_$(line)_9 matches 0.. run data modify storage bhc:temp info.prefix_9 set value "--"

$execute if score @s bhc.bingo_$(bingo)$(step)_$(line)_1 matches ..9 run data modify storage bhc:temp info.prefix_1 set value "0"
$execute if score @s bhc.bingo_$(bingo)$(step)_$(line)_2 matches ..9 run data modify storage bhc:temp info.prefix_2 set value "0"
$execute if score @s bhc.bingo_$(bingo)$(step)_$(line)_3 matches ..9 run data modify storage bhc:temp info.prefix_3 set value "0"
$execute if score @s bhc.bingo_$(bingo)$(step)_$(line)_4 matches ..9 run data modify storage bhc:temp info.prefix_4 set value "0"
$execute if score @s bhc.bingo_$(bingo)$(step)_$(line)_5 matches ..9 run data modify storage bhc:temp info.prefix_5 set value "0"
$execute if score @s bhc.bingo_$(bingo)$(step)_$(line)_6 matches ..9 run data modify storage bhc:temp info.prefix_6 set value "0"
$execute if score @s bhc.bingo_$(bingo)$(step)_$(line)_7 matches ..9 run data modify storage bhc:temp info.prefix_7 set value "0"
$execute if score @s bhc.bingo_$(bingo)$(step)_$(line)_8 matches ..9 run data modify storage bhc:temp info.prefix_8 set value "0"
$execute if score @s bhc.bingo_$(bingo)$(step)_$(line)_9 matches ..9 run data modify storage bhc:temp info.prefix_9 set value "0"

$execute if score @s bhc.bingo_$(bingo)$(step)_$(line)_1 matches 10.. run data modify storage bhc:temp info.prefix_1 set value ""
$execute if score @s bhc.bingo_$(bingo)$(step)_$(line)_2 matches 10.. run data modify storage bhc:temp info.prefix_2 set value ""
$execute if score @s bhc.bingo_$(bingo)$(step)_$(line)_3 matches 10.. run data modify storage bhc:temp info.prefix_3 set value ""
$execute if score @s bhc.bingo_$(bingo)$(step)_$(line)_4 matches 10.. run data modify storage bhc:temp info.prefix_4 set value ""
$execute if score @s bhc.bingo_$(bingo)$(step)_$(line)_5 matches 10.. run data modify storage bhc:temp info.prefix_5 set value ""
$execute if score @s bhc.bingo_$(bingo)$(step)_$(line)_6 matches 10.. run data modify storage bhc:temp info.prefix_6 set value ""
$execute if score @s bhc.bingo_$(bingo)$(step)_$(line)_7 matches 10.. run data modify storage bhc:temp info.prefix_7 set value ""
$execute if score @s bhc.bingo_$(bingo)$(step)_$(line)_8 matches 10.. run data modify storage bhc:temp info.prefix_8 set value ""
$execute if score @s bhc.bingo_$(bingo)$(step)_$(line)_9 matches 10.. run data modify storage bhc:temp info.prefix_9 set value ""

function uhc:in_game/player/misc/info/team/bhc/text with storage bhc:temp info
