
#> lobby:mini_games/tc/stop/kick
#
# @within			
#
#
# @description		Exclusion de tous les joueurs de la zone de trial chamber
#

# Retour aux paramètres normaux
tag @s remove mgs.tc.spec
tag @s remove mgs.tc.player
tag @s remove mgs.tc.finished
tag @s remove mgs.tc.team.01
tag @s remove mgs.tc.team.02
tp @s 20 66 -24 0 0

function uhc:translation/lobby/tc_stop_kick

function uhc:pre_game/player_and_team/reset_effects

# Chargement de l'inventaire
scoreboard players set @s uhc.player.online 0
gamemode adventure @s
execute as @s[tag=uhc.host] run function uhc:pre_game/menu/reset/host
execute as @s[tag=!uhc.host] run function uhc:pre_game/menu/reset/player
scoreboard players set @s uhc.player.online 1
scoreboard players set @s uhc.player.disconnect 0
