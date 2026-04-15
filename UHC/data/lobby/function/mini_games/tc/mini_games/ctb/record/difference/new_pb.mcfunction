
#> lobby:mini_games/tc/mini_games/ctb/record/difference/new_pb
#
# @within			lobby:mini_games/tc/mini_games/ctb/record/main
#
#
# @description		Annonce un nouveau record personnel au joueur concerné
#

scoreboard players operation @s lobby.tc.record.ctb.difference.for = #temp_record lobby.tc.record.ctb.difference.for
scoreboard players operation @s lobby.tc.record.ctb.difference.against = #temp_record lobby.tc.record.ctb.difference.against
scoreboard players operation @s lobby.tc.record.ctb.difference.difference = #temp_record lobby.tc.record.ctb.difference.difference

function uhc:translation/lobby/tc_ctb_record_difference_pb
