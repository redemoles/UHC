
#> bhc:scenario/02/target/death/killer/new_adv/case
#
# @within			bhc:scenario/02/target/death/killer/new_adv/column_2
#
#
# @description		Nouvelle case pour l'assassin 
#

$execute if score @s bhc.bingo_2b_$(line)_$(column) matches 0.. run return fail
$execute unless score @n[type=minecraft:marker,tag=UHC,distance=0..,tag=bhc.temp.dead.team] bhc.bingo_2b_$(line)_$(column) matches 0.. run return fail

tag @s add bhc.temp.team_killer
$advancement grant @p[tag=bhc.temp.killer] only bingo_2b:$(line)_$(column)
tag @s remove bhc.temp.team_killer
scoreboard players set #success bhc.data.temp 1
