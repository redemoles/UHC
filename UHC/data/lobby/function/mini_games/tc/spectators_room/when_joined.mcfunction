
#> lobby:mini_games/tc/spectators_room/when_join
#
# @within			lobby:mini_games/tc/tick
#
#
# @description		Joueur détecté entrant dans la salle des spectateurs
#

scoreboard players enable @s lobby.tc.player.click_to_join
scoreboard players set @s lobby.tc.player.click_to_join 0
tag @s add mgs.tc.spec

function uhc:translation/lobby/tc_specroom_joined
scoreboard players set @s uhc.timer.respawn 0
scoreboard players set @s uhc.player.death.temp 0
