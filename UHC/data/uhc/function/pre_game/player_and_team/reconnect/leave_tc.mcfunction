
#> uhc:pre_game/player_and_team/reconnect/leave_tc
#
# @within			uhc:pre_game/player_and_team/reconnect/
#
#
# @description		Joueur reconnecté détecté
#

tag @s remove mgs.tc.player
tag @s remove mgs.tc.finished
tag @s remove mgs.tc.team.01
tag @s remove mgs.tc.team.02
tp @s 0 49 -21.5 0 0

function uhc:translation/pre_game/player_and_team_reconnect_leave_tc

function lobby:mini_games/tc/spectators_room/when_joined
function uhc:player_status/attributes_and_effects/reset
