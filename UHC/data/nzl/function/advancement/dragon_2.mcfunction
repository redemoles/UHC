
#> nzl:advancement/dragon_2
#
# @within			advancement #nzl:dragon_killed_entity
#
#
# @description		Augmente le score du nombre de mobs tués par les types Dragon et ???
#

execute if entity @s[tag=nzl.type.03] run scoreboard players add @s nzl.goal.mobs_killed 1
execute if score @s nzl.type.player matches 99 run scoreboard players add @s nzl.goal.mobs_killed 1
advancement revoke @s only nzl:dragon_killed_entity
