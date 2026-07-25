
#> uhc:in_game/advancement/killed_by_player/
#
# @within			advancement #uhc:killed_by_player
#
#
# @description		Le joueur est mort
#

advancement revoke @s only uhc:killed_by_player
execute on attacker unless entity @s[type=minecraft:player] run return fail

## Récompenses pour le tueur
scoreboard players operation #team uhc.id.team = @s uhc.id.team
tag @s add uhc.temp
execute on attacker run function uhc:in_game/player/death/killer with storage uhc:settings reward_kill
tag @s remove uhc.temp
# Bingo UHC
execute if score #bhc uhc.gamemode matches 1 unless score #game_progress uhc.game_progress matches 2.. in uhc:lobby run function bhc:in_game/scores_calculator/kills/player_dead

## Résumé des morts
function uhc:in_game/player/death/text_end_game/ with storage uhc:temp hotbar
