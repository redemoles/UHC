
#> nzl:types/move/talent/acier
#
# @within			function tag "nzl:advancements/acier_talent.json"
#
#
# @description		Epine de fer
#

execute store result score #random nzl.data run random value 1..100

execute if score #random nzl.data matches 1..10 if entity @p[tag=nzl.type.01,scores={nzl.type.evolve=3}] run damage @s 3
execute if score #random nzl.data matches 11..20 if entity @p[tag=nzl.type.01,scores={nzl.type.evolve=2..}] run damage @s 2
execute if score #random nzl.data matches 21..40 run damage @s 1
advancement revoke @s only nzl:acier_talent
