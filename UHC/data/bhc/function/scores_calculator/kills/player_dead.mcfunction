
#> bhc:scores_calculator/kills/player_dead
#
# @within			uhc:in_game/advancement/player_killed_player/
#
#
# @description		Identité du joueur
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players set #points bhc.kills.score.inv 0
execute if score #bhc bhc.scenario matches 02 run function bhc:scenario/02/target/death/
execute on attacker as @s[type=minecraft:player] run function bhc:scores_calculator/kills/player_killer
