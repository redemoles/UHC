
#> bhc:scenario/02/target/main
#
# @within			bhc:scenario/02/target/cooldown
#
#
# @description		Changement des cibles
#

## Réinitialisation du minuteur
scoreboard players set #tracker_ennemies uhc.data.temp -1

## Cycle de randomizer
# Annulation compensation aux équipes mortes par leur assassin
scoreboard players add #cycle bhc.target.cycle 1
scoreboard players operation @a[tag=uhc.player] bhc.target.cycle = #cycle bhc.target.cycle
execute as @e[type=marker,tag=UHC,distance=0..] run scoreboard players operation @s bhc.target.team.live = @s uhc.player.lives
execute as @e[type=marker,tag=UHC,distance=0..] run scoreboard players set @s bhc.target.dead.temp 0
scoreboard players set @a[tag=uhc.player] bhc.target.known 0
# Réinitialisation du cycle
execute as @e[type=marker,tag=UHC,distance=0..] run scoreboard players set @s bhc.targeted.id -1
execute as @e[type=marker,tag=UHC,distance=0..] run scoreboard players set @s bhc.targeter.id -1
scoreboard players set #temp bhc.targeted.id 0
scoreboard players set #temp bhc.targeter.id 1
# Cycle - Départ si l'équipe ayant provoqué la réattribution des cibles est éliminé
execute unless entity @n[type=marker,tag=UHC,distance=0..,scores={uhc.player.lives=1..,bhc.target.sort=1..}] as @e[type=marker,tag=UHC,distance=0..,scores={uhc.player.lives=1..},limit=1,sort=random] run function bhc:scenario/02/target/randomizer
# Cycle - Départ avec l'équipe ayant provoqué la réattribution des cibles
execute as @n[type=marker,tag=UHC,distance=0..,scores={uhc.player.lives=1..,bhc.target.sort=1..}] run function bhc:scenario/02/target/randomizer
# Annonce aux joueurs
execute as @e[type=marker,tag=UHC,distance=0..,scores={uhc.player.lives=1..}] run function bhc:scenario/02/target/tellraw
execute as @e[type=marker,tag=UHC,distance=0..] run scoreboard players set @s bhc.target.sort 0
# Annonce aux spectateurs
execute as @a[tag=uhc.spec] in uhc:lobby run function bhc:scenario/02/target/tellraw_spec
execute if entity @p[tag=uhc.temp] in uhc:lobby run function bhc:scenario/02/target/spec/list

execute as @a at @s run playsound minecraft:entity.player.teleport master @s ~ ~ ~ 0.5 0.5 0.5
