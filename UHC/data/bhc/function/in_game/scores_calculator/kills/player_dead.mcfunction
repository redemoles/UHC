
#> bhc:in_game/scores_calculator/kills/player_dead
#
# @within			uhc:in_game/advancement/player_killed_player/
#
#
# @description		Identité du joueur
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players set #points bhc.kills.score.inv 1

## Points bonus par scénario
execute if score #bhc bhc.scenario matches 01 if score #stepb_start bhc.data.temp matches ..0 unless score #stepb_end bhc.data.temp matches ..0 run scoreboard players set #points bhc.kills.score.inv 2
execute if score #bhc bhc.scenario matches 02 run function bhc:in_game/scenario/02/target/death/main

execute on attacker run function bhc:in_game/scores_calculator/kills/player_killer
