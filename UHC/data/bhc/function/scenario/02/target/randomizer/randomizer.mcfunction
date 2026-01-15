
#> bhc:scenario/02/target/randomizer/randomizer
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
execute if score @s bhc.targeted.id matches 0 run scoreboard players operation @s bhc.targeted.id = #team uhc.data.temp.inv

# Équipe cible
execute as @e[type=marker,tag=UHC,distance=0..,scores={uhc.player.lives=1..,bhc.targeter.id=-1,bhc.target.sort=1},limit=1,sort=random] run return run function bhc:scenario/02/target/randomizer/randomizer
execute as @e[type=marker,tag=UHC,distance=0..,scores={uhc.player.lives=1..,bhc.targeter.id=-1}] run scoreboard players set @e bhc.target.sort 1
execute as @e[type=marker,tag=UHC,distance=0..,scores={uhc.player.lives=1..,bhc.targeter.id=-1,bhc.target.sort=1},limit=1,sort=random] run return run function bhc:scenario/02/target/randomizer/randomizer
