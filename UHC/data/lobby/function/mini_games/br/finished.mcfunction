
#> lobby:mini_games/br/finished
#
# @within			lobby:mini_games/br/tick
#
#
# @description		Fonction générale des Backrooms
#

function lobby:mini_games/br/record/main
tp @s 0 65 0
tag @s remove mgs.backroom
function uhc:pre_game/player_and_team/team_join
effect clear @s minecraft:darkness
effect clear @s minecraft:invisibility
