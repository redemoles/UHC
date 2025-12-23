
#> nzl:test/types/1/dragon
#
# @within			nzl:tick
#
#
# @description		Test d'évolution du type
#

give @s diamond 1
give @s gold_block 1
give @s emerald 1
scoreboard players set @s nzl.goal.mobs_killed 60

scoreboard players add @s uhc.player.kills 1
experience add @s 45 levels

#scoreboard players set @s nzl.type.select 03
#function nzl:types/evolve/1/disponible/dragon
