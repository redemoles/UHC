
#> nzl:timer/attack/length_electrique
#
# @within			nzl:timer/attack/length
#
#
# @description		Function executed every tick
#

tag @s remove nzl.electrique.team_01
tag @s remove nzl.electrique.team_02
tag @s remove nzl.electrique.team_03
tag @s remove nzl.electrique.team_04
tag @s remove nzl.electrique.team_05
tag @s remove nzl.electrique.team_06
tag @s remove nzl.electrique.team_07
tag @s remove nzl.electrique.team_08
tag @s remove nzl.electrique.team_09
tag @s remove nzl.electrique.team_10
tag @s remove nzl.electrique.team_11
tag @s remove nzl.electrique.team_12
tag @s remove nzl.electrique.team_13
tag @s remove nzl.electrique.team_14
tag @s remove nzl.electrique.team_15
tag @s remove nzl.electrique.team_16
execute if score @s nzl.weather.thunder matches 1 run scoreboard players remove @n[type=marker,tag=nzl.weather] nzl.weather.thunder 1
scoreboard players set @s nzl.weather.thunder 0
