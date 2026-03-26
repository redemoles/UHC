
#> uhc:in_game/player/misc/info/team/bhc/team_selected
#
# @within			uhc:in_game/player/misc/info/team/bhc/
#
#
# @description		Récupération des informations sur les bingos
#

execute store result storage bhc:temp info.bingo int 1 run scoreboard players get #bhc bhc.scenario

execute unless score #line_stepa bhc.data matches 1.. run return fail
tellraw @p[tag=uhc.temp] [{"text":"\n"},{"selector":"@s"},{"text":" - Grille des Bingos"},{"text":"\n\nBingo Classique"}]
scoreboard players set #temp_line bhc.data 0
data modify storage bhc:temp info.step set value a
function uhc:in_game/player/misc/info/team/bhc/line with storage bhc:temp info

execute unless score #line_stepb bhc.data matches 1.. run return fail
tellraw @p[tag=uhc.temp] [{"text":"\nBingo Spécial"}]
scoreboard players set #temp_line bhc.data 0
data modify storage bhc:temp info.step set value b
function uhc:in_game/player/misc/info/team/bhc/line with storage bhc:temp info
