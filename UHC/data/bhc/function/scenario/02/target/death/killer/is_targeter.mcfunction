
#> bhc:scenario/02/target/death/killer/is_targeter
#
# @within			bhc:scenario/02/target/death/killer/
#
#
# @description		Récompense si le tueur est l'assassin 
#

# Immunité de la cible
execute as @e[type=minecraft:marker,tag=UHC,distance=0..,tag=bhc.temp.dead.team] run function bhc:scenario/02/target/death/killer/on_targeted
execute as @p[tag=bhc.temp.dead] run function bhc:scenario/02/target/death/killer/on_targeted

# Message et points
scoreboard players operation #team uhc.id.team = @s uhc.id.team
execute as @a[predicate=!uhc:id/team,tag=uhc.spec,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Cible tuée","color":"#CFCFCF","italic":true}]
execute as @a[predicate=uhc:id/team,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"+5","color":"#3FE7FF","bold":true},{"text":" points ","color":"#00C3DF","bold":false},{"text":"[","color":"#FFFFFF"},{"text":"Kills","color":"#3FE7FF"},{"text":"] ","color":"#FFFFFF"},{"text":"Cible tuée","color":"#CFCFCF","italic":true,"bold":false}]
execute as @a[predicate=!uhc:id/team,tag=uhc.spec,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Target killed","color":"#CFCFCF","italic":true}]
execute as @a[predicate=uhc:id/team,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"+5","color":"#3FE7FF","bold":true},{"text":" points ","color":"#00C3DF","bold":false},{"text":"[","color":"#FFFFFF"},{"text":"Kills","color":"#3FE7FF"},{"text":"] ","color":"#FFFFFF"},{"text":"Target killed","color":"#CFCFCF","italic":true,"bold":false}]
scoreboard players set #points bhc.kills.score.inv 4

# Si le Bingo de l'Ère Viking est en cours
execute if score #stepb_end bhc.data.temp matches ..0 run return fail
scoreboard players set #success bhc.data.temp 0
execute as @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] unless score @s bhc.stepb.case = #max bhc.stepb.case run function bhc:scenario/02/target/death/killer/new_adv/line
execute as @e[type=minecraft:marker,tag=UHC,distance=0..,tag=bhc.temp.dead.team] run tag @s remove bhc.temp.dead.team
execute as @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] unless score @s bhc.stepb.case = #max bhc.stepb.case unless score #success bhc.data.temp matches 1 run function bhc:scenario/02/target/death/killer/new_adv/line
