
#> bhc:scenario/02/target/death/killer/targeted
#
# @within			bhc:scenario/02/target/death/killer/targeter
#
#
# @description		Protection de la cible et son équipe 
#

# Vérifie si changement de cible nécessaire
execute as @s[type=minecraft:marker] if entity @p[tag=bhc.temp.dead,predicate=!bhc:bhc_2/last_death_same_cycle] run scoreboard players remove @s bhc.target.team.live 1
execute as @s[type=minecraft:marker] if score @s bhc.target.team.live matches 0 unless score #tracker_ennemies uhc.data.temp matches 1.. run scoreboard players set #tracker_ennemies uhc.data.temp 121

scoreboard players set @s bhc.target.dead.temp 300
scoreboard players operation @s bhc.target.dead.temp *= #20 uhc.data.numbers
scoreboard players operation @s bhc.target.dead.temp += #tick bhc.data.temp
scoreboard players operation @s bhc.target.dead.cycle = #cycle bhc.target.cycle
