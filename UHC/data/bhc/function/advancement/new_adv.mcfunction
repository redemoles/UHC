
#> bhc:advancement/new_adv
#
# @within			function tag "bhc:advancement/new_adv.json"
# @executed			as & at the player who completed the advancement
#
# @input macro		$(title)		"Title of the advancement"
# @input macro		$(description)	"Description of the advancement"
#
# @description		Executed when the player completes the advancement
#

## Si l'advancement est validé pendant la vérification des grilles dans le lobby
$execute if score #game_progress uhc.game_progress matches 0 run return run advancement revoke @s only $(namespace):$(line)_$(column)
$execute unless entity @s[tag=uhc.player,tag=!uhc.player.dead] run return run advancement revoke @s only $(namespace):$(line)_$(column)

## Équipe du joueur
scoreboard players set #anonyme_team uhc.data.setup 0
function uhc:in_game/player/team_join/vanilla
scoreboard players operation #anonyme_team uhc.data.setup = #anonyme_team uhc.data.temp

## Recherche du mode de jeu
$execute if score #bhc bhc.scenario matches 00 run function bhc:scenario/00/advancement/new_adv with storage $(namespace) $(line)_$(column)
$execute if score #bhc bhc.scenario matches 01 run function bhc:scenario/01/advancement/new_adv with storage $(namespace) $(line)_$(column)
$execute if score #bhc bhc.scenario matches 02 run function bhc:scenario/02/advancement/new_adv with storage $(namespace) $(line)_$(column)
$execute if score #bhc bhc.scenario matches 51 run function bhc:scenario/51/advancement/new_adv with storage $(namespace) $(line)_$(column)
$execute if score #bhc bhc.scenario matches 91 run function bhc:scenario/91/advancement/new_adv with storage $(namespace) $(line)_$(column)
$execute if score #bhc bhc.scenario matches 92 run function bhc:scenario/92/advancement/new_adv with storage $(namespace) $(line)_$(column)
$execute if score #bhc bhc.scenario matches 99 run function bhc:scenario/99/advancement/new_adv with storage $(namespace) $(line)_$(column)

## Couleur du joueur
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 0 if score #anonyme_team uhc.data.setup matches 1 run return run team join 091 @s
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 1 as @s[tag=uhc.player] run function uhc:in_game/scenario/biome_paranoia/by_colors
execute if score #game_progress uhc.game_progress matches 1 if score #biome_paranoia uhc.scenario matches 2 as @s[tag=uhc.player] run function uhc:in_game/scenario/biome_paranoia/by_nickname
