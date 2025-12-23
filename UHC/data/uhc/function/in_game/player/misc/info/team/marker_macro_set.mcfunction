
#> uhc:in_game/player/misc/info/team/marker_macro_set
#
# @within			uhc:in_game/player/misc/info/team/list
#
#
# @description		Récupération id d'équipe et scores
#

execute store result storage uhc:temp text.team int 1 run scoreboard players get @s uhc.id.team

# Récupération des scores
data modify storage uhc:temp text.sb set value "#temp"
function bhc:timer/scoreboard/marker_score with storage uhc:temp text
scoreboard players operation #temp bhc.stepa.rank.number = @s bhc.stepa.rank.number
scoreboard players operation #temp bhc.stepb.rank.number = @s bhc.stepa.rank.number
scoreboard players operation #temp bhc.kills.rank.number = @s bhc.kills.rank.number
scoreboard players operation #temp bhc.death.rank.number = @s bhc.death.rank.number
scoreboard players operation #temp bhc.total.rank.number = @s bhc.total.rank.number

function uhc:in_game/player/misc/info/team/marker_text with storage uhc:temp text
