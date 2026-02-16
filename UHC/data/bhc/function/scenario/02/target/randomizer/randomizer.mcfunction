
#> bhc:scenario/02/target/randomizer/randomizer
#
# @within			bhc:scenario/02/target/randomizer/main
#
#
# @description		Changement des cibles
#

scoreboard players set @s bhc.target.sort 0
scoreboard players remove #temp bhc.data.temp 1

# Id ciblé et assassin
scoreboard players add #temp bhc.targeted.id 1
scoreboard players add #temp bhc.targeter.id 1
scoreboard players operation @s bhc.targeted.id = #temp bhc.targeted.id
scoreboard players operation @s bhc.targeter.id = #temp bhc.targeter.id
# Id ciblé si première équipe sélectionnée
execute if score @s bhc.targeted.id matches 0 run scoreboard players operation @s bhc.targeted.id = #team uhc.data.temp.inv

## Ciblage
# Recherche d'équipe "valide"
execute if score #temp bhc.data.temp matches 2 as @e[type=minecraft:marker,tag=UHC,distance=0..,scores={uhc.player.lives=1..,bhc.target.sort=1}] if score @s bhc.targeter.former_id = #team uhc.data.temp.inv run return run function bhc:scenario/02/target/randomizer/randomizer
execute if score #temp bhc.targeter.id matches 1 as @e[type=minecraft:marker,tag=UHC,distance=0..,scores={uhc.player.lives=1..,bhc.target.sort=1},predicate=!bhc:bhc_2/this_is_former_targeted,limit=1,sort=random] run return run function bhc:scenario/02/target/randomizer/randomizer
execute as @e[type=minecraft:marker,tag=UHC,distance=0..,scores={uhc.player.lives=1..,bhc.target.sort=1},limit=1,sort=random] run return run function bhc:scenario/02/target/randomizer/randomizer
execute if score #temp bhc.data.temp matches 0 run return fail
# Les équipes "en attente de validation" deviennent "valides"
execute as @e[type=minecraft:marker,tag=UHC,distance=0..,scores={uhc.player.lives=1..,bhc.targeter.id=-1}] run scoreboard players add @s bhc.target.sort 1
scoreboard players operation #temp bhc.targeter.former_id = @s bhc.targeter.former_id
execute as @e[type=minecraft:marker,tag=UHC,distance=0..,scores={uhc.player.lives=1..,bhc.target.sort=1},predicate=!bhc:bhc_2/this_is_former_targeted,limit=1,sort=random] run return run function bhc:scenario/02/target/randomizer/randomizer
