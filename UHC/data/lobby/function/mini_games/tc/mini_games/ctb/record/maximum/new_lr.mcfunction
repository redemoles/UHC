
#> lobby:mini_games/tc/mini_games/ctb/record/maximum/new_lr
#
# @within			lobby:mini_games/tc/mini_games/ctb/record/main
#
#
# @description		Annonce un nouveau record local à tous les joueurs
#

scoreboard players operation #record lobby.tc.record.ctb.maximum.for = @s lobby.tc.record.ctb.maximum.for
scoreboard players operation #record lobby.tc.record.ctb.maximum.against = @s lobby.tc.record.ctb.maximum.against
scoreboard players operation #record lobby.tc.record.ctb.maximum.difference = @s lobby.tc.record.ctb.maximum.difference

function uhc:translation/lobby/tc_ctb_record_maximum_lr
