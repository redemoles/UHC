
#> nzl:advancement/fee_2
#
# @within			advancement #nzl:fee_killed_entity
#
#
# @description		Vérifie si un mob tué avec un golem par le type Fée
#

execute at @s[advancements={nzl:fee_killed_entity_1=true}] run scoreboard players add @s nzl.goal.iron_golem 1
execute at @s[advancements={nzl:fee_killed_entity_2=true}] as @n[type=iron_golem,nbt={PlayerCreated:1b},distance=..20] unless entity @s[nbt={AngerTime:0}] run scoreboard players add @s nzl.goal.iron_golem 1
advancement revoke @s only nzl:fee_killed_entity_1
advancement revoke @s only nzl:fee_killed_entity_2
