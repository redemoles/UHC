
#> bhc:scenario/02/target/randomizer/main
#
# @within			bhc:scenario/02/target/randomizer/cooldown
#
#
# @description		Changement des cibles
#

## Réinitialisation du minuteur
scoreboard players set #tracker_ennemies uhc.data.temp -1

## Cycle de randomizer
# Numéro de cycle
scoreboard players add #cycle bhc.target.cycle 1
scoreboard players operation @a[tag=uhc.player] bhc.target.cycle = #cycle bhc.target.cycle
# Annulation compensation aux équipes mortes par leur assassin
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run scoreboard players operation @s bhc.target.team.live = @s uhc.player.lives
execute as @e[type=minecraft:marker,tag=UHC,distance=0..] run scoreboard players set @s bhc.target.dead.temp 0
scoreboard players set @a[tag=uhc.player] bhc.target.known 0
scoreboard players set @e[type=minecraft:marker,tag=UHC,distance=0..] bhc.target.known 0
# Réinitialisation du cycle
scoreboard players set #temp bhc.data.temp 0
execute if score #cycle bhc.target.cycle matches 1 as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:scenario/02/target/randomizer/sort_first_cycle
execute if score #cycle bhc.target.cycle matches 2.. unless score #team uhc.data.temp matches 4 as @e[type=minecraft:marker,tag=UHC,distance=0..] run function bhc:scenario/02/target/randomizer/sort_next_cycle
scoreboard players set #temp bhc.targeted.id -1
scoreboard players set #temp bhc.targeter.id 0
# Génération du cycle
execute if score #cycle bhc.target.cycle matches 1 as @e[type=minecraft:marker,tag=UHC,distance=0..,scores={uhc.player.lives=1..},limit=1,sort=random] run function bhc:scenario/02/target/randomizer/randomizer
execute if score #cycle bhc.target.cycle matches 2.. unless score #team uhc.data.temp matches 4 as @n[type=minecraft:marker,tag=UHC,distance=0..,scores={bhc.targeter.former_id=1}] run function bhc:scenario/02/target/randomizer/randomizer
execute if score #cycle bhc.target.cycle matches 2.. if score #team uhc.data.temp matches 4 as @n[type=minecraft:marker,tag=UHC,distance=0..,scores={bhc.targeter.former_id=1}] run function bhc:scenario/02/target/randomizer/4_teams_left/check
# Annonce aux joueurs
execute as @e[type=minecraft:marker,tag=UHC,distance=0..,scores={uhc.player.lives=1..}] run function bhc:scenario/02/target/randomizer/tellraw
# Annonce aux spectateurs
execute as @a[tag=uhc.spec] in uhc:lobby run function bhc:scenario/02/target/randomizer/tellraw_spec
execute if entity @p[tag=uhc.temp] in uhc:lobby run function bhc:scenario/02/target/spec/list

execute as @a at @s run playsound minecraft:entity.player.teleport master @s ~ ~ ~ 0.5 0.5 0.5
