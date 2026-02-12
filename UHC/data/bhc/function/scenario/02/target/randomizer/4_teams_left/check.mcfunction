
#> bhc:scenario/02/target/randomizer/4_teams_left/check
#
# @within			bhc:scenario/02/target/randomizer/cooldown
#
#
# @description		Changement des cibles
#

## Vérifie le nombre d'équipe avec un seul joueur
execute store result score #temp bhc.data.temp if entity @e[type=marker,tag=UHC,distance=0..,scores={uhc.player.lives=1}]
execute if score #temp bhc.data.temp matches 1..3 store result score #sort bhc.data.temp run random value 1..2
execute unless score #temp bhc.data.temp matches 1..3 run scoreboard players set #sort bhc.data.temp 2
# Vérifie si les joueurs solos sont dans des équipes opposées dans le cycle actuel
execute if score #temp bhc.data.temp matches 2 if score @s uhc.player.lives = @n[type=marker,tag=UHC,distance=0..,scores={bhc.targeter.former_id=3}] uhc.player.lives run scoreboard players set #sort bhc.data.temp 1
execute if score #temp bhc.data.temp matches 2 if score @n[type=marker,tag=UHC,distance=0..,scores={bhc.targeter.former_id=2}] uhc.player.lives = @n[type=marker,tag=UHC,distance=0..,scores={bhc.targeter.former_id=4}] uhc.player.lives run scoreboard players set #sort bhc.data.temp 1
# Vérifie si l'équipe sélectionnée et son assassin sont tous les 2 solos ou si aucune des 2 ne l'est
execute if score #temp bhc.data.temp matches 2 if score @s uhc.player.lives = @n[type=marker,tag=UHC,distance=0..,scores={bhc.targeter.former_id=4}] uhc.player.lives run scoreboard players set #sort bhc.data.temp 2
execute if score #temp bhc.data.temp matches 2 if score @n[type=marker,tag=UHC,distance=0..,scores={bhc.targeter.former_id=2}] uhc.player.lives = @n[type=marker,tag=UHC,distance=0..,scores={bhc.targeter.former_id=3}] uhc.player.lives run scoreboard players set #sort bhc.data.temp 2

execute if score #sort bhc.data.temp matches 1 as @e[type=marker,tag=UHC,distance=0..] run function bhc:scenario/02/target/randomizer/4_teams_left/sort
execute if score #sort bhc.data.temp matches 2 as @e[type=marker,tag=UHC,distance=0..] run function bhc:scenario/02/target/randomizer/sort_next_cycle
function bhc:scenario/02/target/randomizer/randomizer
