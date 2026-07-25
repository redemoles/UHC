
#> bhc:in_game/scores_calculator/endgame/detect
#
# @within			uhc:in_game/end_game/main
#
#
# @description		Fin de partie
#

## Classement Survie final
function bhc:in_game/scores_calculator/death/update

## Classement Total final
function bhc:in_game/scores_calculator/total/rank

## Préparation message de fin
execute if score #game_progress uhc.game_progress matches 2.. as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:in_game/scores_calculator/endgame/message_set with entity @s data
scoreboard players operation #max bhc.total.score = #max bhc.stepa.rank.score
scoreboard players operation #max bhc.total.score += #max bhc.stepb.rank.score
scoreboard players operation #max bhc.total.score += #max bhc.kills.rank.score
scoreboard players operation #max bhc.total.score += #max bhc.death.rank.score

## Attribution des scores d'équipes aux joueurs
scoreboard players set #sb bhc.data.temp 0
scoreboard objectives setdisplay sidebar bhc.total.score

function bhc:in_game/scores_calculator/endgame/message_text
execute as @a run function uhc:in_game/player/misc/team_join
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:in_game/timer/scoreboard/marker_name

execute if score #bhc bhc.scenario matches 02 run scoreboard players set #tracker_ennemies uhc.data.temp 1001
