
#> bhc:scenario/02/target/randomizer
#
# @within			bhc:scenario/02/target/
#
#
# @description		Changement des cibles
#

# Id ciblé et assassin
scoreboard players operation @s bhc.targeted.id = #temp bhc.targeted.id
scoreboard players operation @s bhc.targeter.id = #temp bhc.targeter.id
scoreboard players add #temp bhc.targeted.id 1
scoreboard players add #temp bhc.targeter.id 1
# Id ciblé si première équipe sélectionnée
execute if score @s bhc.targeter.id matches 1 run scoreboard players operation @s bhc.targeted.id = #team uhc.data.temp.inv

# Équipe cible
execute if score #team uhc.data.temp.inv matches ..2 run scoreboard players set @s bhc.target.sort 0
scoreboard players operation #temp bhc.target.sort = @s bhc.target.sort
execute as @e[type=marker,tag=UHC,distance=0..,scores={uhc.player.lives=1..,bhc.targeter.id=-1},predicate=!bhc:bhc_2/target_sort,limit=1,sort=random] run return run function bhc:scenario/02/target/randomizer
