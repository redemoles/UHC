
#> lobby:mini_games/tc/mini_games/ctb/record/difference/new_lr
#
# @within			lobby:mini_games/tc/mini_games/ctb/record/main
#
#
# @description		Annonce un nouveau record local à tous les joueurs
#

scoreboard players operation #record lobby.tc.record.ctb.difference.for = @s lobby.tc.record.ctb.difference.for
scoreboard players operation #record lobby.tc.record.ctb.difference.against = @s lobby.tc.record.ctb.difference.against
scoreboard players operation #record lobby.tc.record.ctb.difference.difference = @s lobby.tc.record.ctb.difference.difference

function uhc:translation/lobby/tc_ctb_record_difference_lr
