
#> bhc:in_game/advancement/new_adv
#
# @within			function tag "bhc:advancement/new_adv.json"
# 
#
# @description		Executed when the player completes the advancement
#

## Si l'advancement est validé pendant la vérification des grilles dans le lobby
$execute if score #game_progress uhc.game_progress matches 0 run return run advancement revoke @s only $(namespace):$(line)_$(column)
execute unless entity @s[tag=uhc.player,tag=!uhc.player.dead] run return fail

## Équipe du joueur
function uhc:in_game/player/misc/team_join/known_team

## Recherche du mode de jeu
$execute if score #bhc bhc.scenario matches 00 run function bhc:in_game/scenario/00/advancement/new_adv with storage $(namespace) $(line)_$(column)
$execute if score #bhc bhc.scenario matches 01 run function bhc:in_game/scenario/01/advancement/new_adv with storage $(namespace) $(line)_$(column)
$execute if score #bhc bhc.scenario matches 02 run function bhc:in_game/scenario/02/advancement/new_adv with storage $(namespace) $(line)_$(column)
$execute if score #bhc bhc.scenario matches 51 run function bhc:in_game/scenario/51/advancement/new_adv with storage $(namespace) $(line)_$(column)
$execute if score #bhc bhc.scenario matches 91 run function bhc:in_game/scenario/91/advancement/new_adv with storage $(namespace) $(line)_$(column)
$execute if score #bhc bhc.scenario matches 92 run function bhc:in_game/scenario/92/advancement/new_adv with storage $(namespace) $(line)_$(column)
$execute if score #bhc bhc.scenario matches 99 run function bhc:in_game/scenario/99/advancement/new_adv with storage $(namespace) $(line)_$(column)

## Couleur du joueur
function uhc:in_game/player/misc/team_join/main
