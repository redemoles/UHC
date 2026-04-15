
#> nzl:types/move/attack_activation/eau
#
# @within			nzl:types/move/attack_available/
#
#
# @description		Activation de l'attaque
#

# Si attaque disponible
scoreboard players set #seconds nzl.attack.length.04 25
scoreboard players operation @s nzl.attack.length.04 = #seconds nzl.attack.length.04
scoreboard players operation @s nzl.attack.length.04 *= #20 uhc.data.numbers
data modify storage nzl:temp move.type set value "04"
execute as @p[scores={nzl.type.player=04},predicate=uhc:id/team] run function uhc:translation/nzl/move_attack_activation with storage nzl:temp move.type
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 0.5 1 0.5
scoreboard players set @s nzl.attack.cooldown.04 300
scoreboard players operation @s nzl.attack.cooldown.04 *= #20 uhc.data.numbers

scoreboard players operation @s nzl.attack.length > @s nzl.attack.length.04
scoreboard players operation @s nzl.attack.cooldown > @s nzl.attack.cooldown.04

# Instantanée
scoreboard players add @n[type=minecraft:marker,tag=nzl.weather] nzl.weather.rain 1
execute at @p[scores={nzl.type.player=04},predicate=uhc:id/team] as @a[distance=..50] run function nzl:types/move/attack_activation/eau_target

execute if score #team uhc.id.team matches 01 run tag @s add nzl.eau.team_01
execute if score #team uhc.id.team matches 02 run tag @s add nzl.eau.team_02
execute if score #team uhc.id.team matches 03 run tag @s add nzl.eau.team_03
execute if score #team uhc.id.team matches 04 run tag @s add nzl.eau.team_04
execute if score #team uhc.id.team matches 05 run tag @s add nzl.eau.team_05
execute if score #team uhc.id.team matches 06 run tag @s add nzl.eau.team_06
execute if score #team uhc.id.team matches 07 run tag @s add nzl.eau.team_07
execute if score #team uhc.id.team matches 08 run tag @s add nzl.eau.team_08
execute if score #team uhc.id.team matches 09 run tag @s add nzl.eau.team_09
execute if score #team uhc.id.team matches 10 run tag @s add nzl.eau.team_10
execute if score #team uhc.id.team matches 11 run tag @s add nzl.eau.team_11
execute if score #team uhc.id.team matches 12 run tag @s add nzl.eau.team_12
execute if score #team uhc.id.team matches 13 run tag @s add nzl.eau.team_13
execute if score #team uhc.id.team matches 14 run tag @s add nzl.eau.team_14
execute if score #team uhc.id.team matches 15 run tag @s add nzl.eau.team_15
execute if score #team uhc.id.team matches 16 run tag @s add nzl.eau.team_16
