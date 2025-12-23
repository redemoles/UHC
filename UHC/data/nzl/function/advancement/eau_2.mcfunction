
#> nzl:advancement/eau_2
#
# @within			advancement #nzl:eau_killed_entity
#
#
# @description		Augmente le score du nombre de mobs aquatiques hostiles tués par les types Eau et ???
#

execute if entity @s[tag=nzl.type.04] run scoreboard players add @s nzl.goal.aquatics_killed 1
execute if score @s nzl.type.player matches 99 run scoreboard players add @s nzl.goal.aquatics_killed 1
advancement revoke @s only nzl:eau_killed_entity
