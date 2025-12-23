
#> nzl:test/types/1/combat
#
# @within			nzl:tick
#
#
# @description		Test d'évolution du type
#

give @s diamond 1
give @s iron_sword 1
give @s leather_chestplate 1
scoreboard players set @s nzl.goal.zombies_killed 20

scoreboard players add @s uhc.player.kills 1
experience add @s 45 levels

#scoreboard players set @s nzl.type.select 02
#function nzl:types/evolve/1/disponible/combat
