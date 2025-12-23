
#> nzl:types/evolve/
#
# @within			nzl:types/timer/tick
#
#
# @description		Evolution
#

execute as @s[scores={nzl.type.evolve=1}] if score @s nzl.type.player matches 99 run function nzl:types/evolve/1/
execute as @s[scores={nzl.type.evolve=2}] run function nzl:types/evolve/2/
execute as @s[scores={nzl.type.evolve=3}] run function nzl:types/evolve/3/

scoreboard players set @s nzl.type.select 99
scoreboard players set @s nzl.type.evolve 0
scoreboard players enable @a nzl.type.select
scoreboard players enable @a nzl.type.evolve
