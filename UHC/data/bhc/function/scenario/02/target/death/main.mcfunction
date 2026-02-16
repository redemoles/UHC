
#> bhc:scenario/02/target/death/main
#
# @within			bhc:scores_calculator/kills/player_dead
#
#
# @description		Détection nouveau kill 
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
tag @s add bhc.temp.dead

# Id ciblé et assassin du mort
scoreboard players operation #temp bhc.targeted.id = @s bhc.targeted.id
scoreboard players operation #temp bhc.targeter.id = @s bhc.targeter.id
execute as @e[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] run tag @s add bhc.temp.dead.team
execute on attacker as @s[type=minecraft:player] run function bhc:scenario/02/target/death/killer/main
execute as @e[type=minecraft:marker,tag=UHC,distance=0..,tag=bhc.temp.dead.team] run tag @s remove bhc.temp.dead.team
tag @a[tag=bhc.temp.killer] remove bhc.temp.killer

## Joueur éliminé
scoreboard players operation #team uhc.id.team = @s uhc.id.team
# Jamais tué par son assassin
execute if score @s[predicate=!bhc:bhc_2/last_death_same_cycle] uhc.player.lives matches 1 as @e[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] run scoreboard players remove @s bhc.target.team.live 1
execute if score @s[predicate=!bhc:bhc_2/last_death_same_cycle] uhc.player.lives matches 1 as @e[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] if score @s bhc.target.team.live matches 0 unless score #tracker_ennemies uhc.data.temp matches 1.. run scoreboard players set #tracker_ennemies uhc.data.temp 121
# Dernier joueur de l'équipe
execute if score @s uhc.player.lives matches 1 as @e[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team,scores={uhc.player.lives=1}] run function bhc:scenario/02/target/death/team_out

tag @s remove bhc.temp.dead
