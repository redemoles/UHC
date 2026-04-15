
#> lobby:mini_games/tc/waiting/when_joined
#
# @within			lobby:mini_games/tc/tick
#
#
# @description		Joueur détecté voulant entrer dans la chambre
#

scoreboard players enable @s lobby.tc.player.click_to_join
scoreboard players set @s lobby.tc.player.click_to_join 0

execute if entity @s[tag=!mgs.tc.spec] run return run function uhc:translation/lobby/tc_waiting_list_canceled
function uhc:translation/lobby/tc_waiting_list_added

tag @s add mgs.tc.player
