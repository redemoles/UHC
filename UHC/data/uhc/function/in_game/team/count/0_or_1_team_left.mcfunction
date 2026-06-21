
#> uhc:in_game/team/count/0_or_1_team_left
#
# @within			uhc:in_game/team/count/main
#
#
# @description		Envoie d'un message aux hosts pour proposer d'arrêter la partie
#

scoreboard players set #message_force_end_sent uhc.game_progress 1
function uhc:end
