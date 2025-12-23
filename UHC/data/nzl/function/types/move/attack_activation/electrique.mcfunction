
#> nzl:types/move/attack_activation/electrique
#
# @within			nzl:types/move/attack_available/
#
#
# @description		Activation de l'attaque
#

# Si attaque disponible
scoreboard players set #seconds nzl.attack.length.05 15
scoreboard players operation @s nzl.attack.length.05 = #seconds nzl.attack.length.05
scoreboard players operation @s nzl.attack.length.05 *= #20 uhc.data.numbers
tellraw @p[scores={nzl.type.player=05,uhc.player.lang=061801},predicate=uhc:id_team] [{"text":"\nAttaque activée.","color":"#3F9FFF","bold":true},{"text":"\nDurée : ","color":"#7FBFFF","bold":false},{"score":{"name":"#seconds","objective":"nzl.attack.length.05"},"color":"#FF3F3F","bold":false},{"text":" secondes.\n","color":"#7FBFFF","bold":false}]
tellraw @p[scores={nzl.type.player=05,uhc.player.lang=051407},predicate=uhc:id_team] [{"text":"\nAttack activated.","color":"#3F9FFF","bold":true},{"text":"\nDuration: ","color":"#7FBFFF","bold":false},{"score":{"name":"#seconds","objective":"nzl.attack.length.05"},"color":"#FF3F3F","bold":false},{"text":" seconds.\n","color":"#7FBFFF","bold":false}]
playsound minecraft:entity.blaze.death master @a ~ ~ ~ 0.5 1 0.5
scoreboard players set @s nzl.attack.cooldown.05 300
scoreboard players operation @s nzl.attack.cooldown.05 *= #20 uhc.data.numbers

scoreboard players operation @s nzl.attack.length > @s nzl.attack.length.05
scoreboard players operation @s nzl.attack.cooldown > @s nzl.attack.cooldown.05

# Instantanée
execute at @p[scores={nzl.type.player=05},predicate=uhc:id_team] if predicate uhc:weather_rain if entity @a[scores={nzl.attack.length.05=1..},distance=..50] run scoreboard players add @s nzl.weather.thunder 1
execute if score @s nzl.weather.thunder matches 1 run scoreboard players add @n[type=marker,tag=nzl.weather] nzl.weather.thunder 1
execute at @p[scores={nzl.type.player=05},predicate=uhc:id_team] as @a[distance=..50,tag=!nzl.type.15] run function nzl:types/move/attack_activation/electrique_target

execute if score #team uhc.id.team matches 01 run tag @s add nzl.electrique.team_01
execute if score #team uhc.id.team matches 02 run tag @s add nzl.electrique.team_02
execute if score #team uhc.id.team matches 03 run tag @s add nzl.electrique.team_03
execute if score #team uhc.id.team matches 04 run tag @s add nzl.electrique.team_04
execute if score #team uhc.id.team matches 05 run tag @s add nzl.electrique.team_05
execute if score #team uhc.id.team matches 06 run tag @s add nzl.electrique.team_06
execute if score #team uhc.id.team matches 07 run tag @s add nzl.electrique.team_07
execute if score #team uhc.id.team matches 08 run tag @s add nzl.electrique.team_08
execute if score #team uhc.id.team matches 09 run tag @s add nzl.electrique.team_09
execute if score #team uhc.id.team matches 10 run tag @s add nzl.electrique.team_10
execute if score #team uhc.id.team matches 11 run tag @s add nzl.electrique.team_11
execute if score #team uhc.id.team matches 12 run tag @s add nzl.electrique.team_12
execute if score #team uhc.id.team matches 13 run tag @s add nzl.electrique.team_13
execute if score #team uhc.id.team matches 14 run tag @s add nzl.electrique.team_14
execute if score #team uhc.id.team matches 15 run tag @s add nzl.electrique.team_15
execute if score #team uhc.id.team matches 16 run tag @s add nzl.electrique.team_16
