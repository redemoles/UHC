
#> nzl:types/evolve/1/
#
# @within			nzl:types/evolve/
#
#
# @description		Evolution
#

execute as @s[scores={nzl.type.select=01}] run function nzl:types/evolve/1/disponible/acier
execute as @s[scores={nzl.type.select=02}] run function nzl:types/evolve/1/disponible/combat
execute as @s[scores={nzl.type.select=03}] run function nzl:types/evolve/1/disponible/dragon
execute as @s[scores={nzl.type.select=04}] run function nzl:types/evolve/1/disponible/eau
execute as @s[scores={nzl.type.select=05}] run function nzl:types/evolve/1/disponible/electrique
execute as @s[scores={nzl.type.select=06}] run function nzl:types/evolve/1/disponible/fee
execute as @s[scores={nzl.type.select=07}] run function nzl:types/evolve/1/disponible/feu
execute as @s[scores={nzl.type.select=08}] run function nzl:types/evolve/1/disponible/glace
execute as @s[scores={nzl.type.select=09}] run function nzl:types/evolve/1/disponible/insecte
execute as @s[scores={nzl.type.select=10}] run function nzl:types/evolve/1/disponible/normal
execute as @s[scores={nzl.type.select=11}] run function nzl:types/evolve/1/disponible/plante
execute as @s[scores={nzl.type.select=12}] run function nzl:types/evolve/1/disponible/poison
execute as @s[scores={nzl.type.select=13}] run function nzl:types/evolve/1/disponible/psy
execute as @s[scores={nzl.type.select=14}] run function nzl:types/evolve/1/disponible/roche
execute as @s[scores={nzl.type.select=15}] run function nzl:types/evolve/1/disponible/sol
execute as @s[scores={nzl.type.select=16}] run function nzl:types/evolve/1/disponible/spectre
execute as @s[scores={nzl.type.select=17}] run function nzl:types/evolve/1/disponible/tenebres
execute as @s[scores={nzl.type.select=18}] run function nzl:types/evolve/1/disponible/vol

scoreboard players remove #double_type nzl.data 1
execute if score #double_type nzl.data matches 0 run scoreboard players remove @n[type=marker,tag=nzl.type,tag=01] nzl.type.available 1
execute if score #double_type nzl.data matches 0 run scoreboard players remove #type_01 nzl.type.available 1
