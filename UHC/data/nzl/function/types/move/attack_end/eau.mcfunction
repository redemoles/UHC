
#> nzl:types/move/attack_end/eau
#
# @within			nzl:types/move/stats/move/stats/
#
#
# @description		Vérifie si les bonus/malus doivent être retirés
#

execute as @s[tag=nzl.eau.team_01] unless entity @n[type=marker,tag=nzl.eau.team_01] run tag @s remove nzl.eau.team_01
execute as @s[tag=nzl.eau.team_02] unless entity @n[type=marker,tag=nzl.eau.team_02] run tag @s remove nzl.eau.team_02
execute as @s[tag=nzl.eau.team_03] unless entity @n[type=marker,tag=nzl.eau.team_03] run tag @s remove nzl.eau.team_03
execute as @s[tag=nzl.eau.team_04] unless entity @n[type=marker,tag=nzl.eau.team_04] run tag @s remove nzl.eau.team_04
execute as @s[tag=nzl.eau.team_05] unless entity @n[type=marker,tag=nzl.eau.team_05] run tag @s remove nzl.eau.team_05
execute as @s[tag=nzl.eau.team_06] unless entity @n[type=marker,tag=nzl.eau.team_06] run tag @s remove nzl.eau.team_06
execute as @s[tag=nzl.eau.team_07] unless entity @n[type=marker,tag=nzl.eau.team_07] run tag @s remove nzl.eau.team_07
execute as @s[tag=nzl.eau.team_08] unless entity @n[type=marker,tag=nzl.eau.team_08] run tag @s remove nzl.eau.team_08
execute as @s[tag=nzl.eau.team_09] unless entity @n[type=marker,tag=nzl.eau.team_09] run tag @s remove nzl.eau.team_09
execute as @s[tag=nzl.eau.team_10] unless entity @n[type=marker,tag=nzl.eau.team_10] run tag @s remove nzl.eau.team_10
execute as @s[tag=nzl.eau.team_11] unless entity @n[type=marker,tag=nzl.eau.team_11] run tag @s remove nzl.eau.team_11
execute as @s[tag=nzl.eau.team_12] unless entity @n[type=marker,tag=nzl.eau.team_12] run tag @s remove nzl.eau.team_12
execute as @s[tag=nzl.eau.team_13] unless entity @n[type=marker,tag=nzl.eau.team_13] run tag @s remove nzl.eau.team_13
execute as @s[tag=nzl.eau.team_14] unless entity @n[type=marker,tag=nzl.eau.team_14] run tag @s remove nzl.eau.team_14
execute as @s[tag=nzl.eau.team_15] unless entity @n[type=marker,tag=nzl.eau.team_15] run tag @s remove nzl.eau.team_15
execute as @s[tag=nzl.eau.team_16] unless entity @n[type=marker,tag=nzl.eau.team_16] run tag @s remove nzl.eau.team_16

execute unless entity @s[tag=nzl.eau.team_01] unless entity @s[tag=nzl.eau.team_02] unless entity @s[tag=nzl.eau.team_03] unless entity @s[tag=nzl.eau.team_04] unless entity @s[tag=nzl.eau.team_05] unless entity @s[tag=nzl.eau.team_06] unless entity @s[tag=nzl.eau.team_07] unless entity @s[tag=nzl.eau.team_08] unless entity @s[tag=nzl.eau.team_09] unless entity @s[tag=nzl.eau.team_10] unless entity @s[tag=nzl.eau.team_11] unless entity @s[tag=nzl.eau.team_12] unless entity @s[tag=nzl.eau.team_13] unless entity @s[tag=nzl.eau.team_14] unless entity @s[tag=nzl.eau.team_15] unless entity @s[tag=nzl.eau.team_16] run tag @s remove nzl.eau.target
