
#> nzl:types/evolve/1/starter/
#
# @within			nzl:start/
#
#
# @description		Attribution des types au démarrage
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team

execute if score #type_01 nzl.type.available matches 1.. unless entity @s[scores={nzl.type.level=01}] unless entity @p[scores={nzl.type.select=01},predicate=uhc:id_team] run function nzl:types/evolve/1/starter/acier
execute if score #type_02 nzl.type.available matches 1.. unless entity @s[scores={nzl.type.level=01}] unless entity @p[scores={nzl.type.select=02},predicate=uhc:id_team] run function nzl:types/evolve/1/starter/combat
execute if score #type_03 nzl.type.available matches 1.. unless entity @s[scores={nzl.type.level=01}] unless entity @p[scores={nzl.type.select=03},predicate=uhc:id_team] run function nzl:types/evolve/1/starter/dragon
execute if score #type_04 nzl.type.available matches 1.. unless entity @s[scores={nzl.type.level=01}] unless entity @p[scores={nzl.type.select=04},predicate=uhc:id_team] run function nzl:types/evolve/1/starter/eau
execute if score #type_05 nzl.type.available matches 1.. unless entity @s[scores={nzl.type.level=01}] unless entity @p[scores={nzl.type.select=05},predicate=uhc:id_team] run function nzl:types/evolve/1/starter/electrique
execute if score #type_06 nzl.type.available matches 1.. unless entity @s[scores={nzl.type.level=01}] unless entity @p[scores={nzl.type.select=06},predicate=uhc:id_team] run function nzl:types/evolve/1/starter/fee
execute if score #type_07 nzl.type.available matches 1.. unless entity @s[scores={nzl.type.level=01}] unless entity @p[scores={nzl.type.select=07},predicate=uhc:id_team] run function nzl:types/evolve/1/starter/feu
execute if score #type_08 nzl.type.available matches 1.. unless entity @s[scores={nzl.type.level=01}] unless entity @p[scores={nzl.type.select=08},predicate=uhc:id_team] run function nzl:types/evolve/1/starter/glace
execute if score #type_09 nzl.type.available matches 1.. unless entity @s[scores={nzl.type.level=01}] unless entity @p[scores={nzl.type.select=09},predicate=uhc:id_team] run function nzl:types/evolve/1/starter/insecte
execute if score #type_10 nzl.type.available matches 1.. unless entity @s[scores={nzl.type.level=01}] unless entity @p[scores={nzl.type.select=10},predicate=uhc:id_team] run function nzl:types/evolve/1/starter/normal
execute if score #type_11 nzl.type.available matches 1.. unless entity @s[scores={nzl.type.level=01}] unless entity @p[scores={nzl.type.select=11},predicate=uhc:id_team] run function nzl:types/evolve/1/starter/plante
execute if score #type_12 nzl.type.available matches 1.. unless entity @s[scores={nzl.type.level=01}] unless entity @p[scores={nzl.type.select=12},predicate=uhc:id_team] run function nzl:types/evolve/1/starter/poison
execute if score #type_13 nzl.type.available matches 1.. unless entity @s[scores={nzl.type.level=01}] unless entity @p[scores={nzl.type.select=13},predicate=uhc:id_team] run function nzl:types/evolve/1/starter/psy
execute if score #type_14 nzl.type.available matches 1.. unless entity @s[scores={nzl.type.level=01}] unless entity @p[scores={nzl.type.select=14},predicate=uhc:id_team] run function nzl:types/evolve/1/starter/roche
execute if score #type_15 nzl.type.available matches 1.. unless entity @s[scores={nzl.type.level=01}] unless entity @p[scores={nzl.type.select=15},predicate=uhc:id_team] run function nzl:types/evolve/1/starter/sol
execute if score #type_16 nzl.type.available matches 1.. unless entity @s[scores={nzl.type.level=01}] unless entity @p[scores={nzl.type.select=16},predicate=uhc:id_team] run function nzl:types/evolve/1/starter/spectre
execute if score #type_17 nzl.type.available matches 1.. unless entity @s[scores={nzl.type.level=01}] unless entity @p[scores={nzl.type.select=17},predicate=uhc:id_team] run function nzl:types/evolve/1/starter/tenebres
execute if score #type_18 nzl.type.available matches 1.. unless entity @s[scores={nzl.type.level=01}] unless entity @p[scores={nzl.type.select=18},predicate=uhc:id_team] run function nzl:types/evolve/1/starter/vol
