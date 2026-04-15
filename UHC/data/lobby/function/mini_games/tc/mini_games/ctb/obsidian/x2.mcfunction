
#> lobby:mini_games/tc/mini_games/ctb/obsidian/x2
#
# @within			lobby:mini_games/tc/mini_games/ctb/obsidian/mined
#
#
# @description		Récompense suite à une obsidienne minée
#

function uhc:translation/lobby/tc_ctb_obsidian_x2

# Effets
execute if entity @s[tag=mgs.tc.team.01] run scoreboard players set #ctb_x2_team_01 lobby.tc.data 400
execute if entity @s[tag=mgs.tc.team.02] run scoreboard players set #ctb_x2_team_02 lobby.tc.data 400
