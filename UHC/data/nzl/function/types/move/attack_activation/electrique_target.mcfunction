
#> nzl:types/move/attack_activation/electrique_target
#
# @within			nzl:types/move/attack_activation/electrique
#
#
# @description		Donne des malus aux joueurs ciblés (sauf type Sol)
#

# Effets sur victimes
execute at @s run summon minecraft:lightning_bolt ~ ~ ~

tag @s add nzl.electrique.power_1
execute if predicate uhc:weather_thunder run tag @s add nzl.electrique.power_2

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
