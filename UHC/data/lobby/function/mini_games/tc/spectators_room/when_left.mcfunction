
#> lobby:mini_games/tc/spectators_room/when_left
#
# @within			lobby:mini_games/tc/tick
#
#
# @description		Joueur détecté quittant la salle des spectateurs
#


scoreboard players set @s lobby.tc.player.click_to_join 0
tag @s remove mgs.tc.spec
tag @s remove mgs.tc.player
