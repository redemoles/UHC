
#> lobby:mini_games/tc/mini_games/ctb/record/maximum/new_pb
#
# @within			lobby:mini_games/tc/mini_games/ctb/record/main
#
#
# @description		Annonce un nouveau record personnel au joueur concerné
#

scoreboard players operation @s lobby.tc.record.ctb.maximum.for = #temp_record lobby.tc.record.ctb.maximum.for
scoreboard players operation @s lobby.tc.record.ctb.maximum.against = #temp_record lobby.tc.record.ctb.maximum.against
scoreboard players operation @s lobby.tc.record.ctb.maximum.difference = #temp_record lobby.tc.record.ctb.maximum.difference

function uhc:translation/lobby/tc_ctb_record_maximum_pb
