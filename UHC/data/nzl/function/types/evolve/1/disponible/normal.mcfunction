
#> nzl:types/evolve/1/disponible/normal
#
# @within			nzl:types/evolve/1/
#
#
# @description		Test si ce type est disponible
#

# Type disponible ?
scoreboard players operation #team uhc.id.team = @s uhc.id.team
execute if score #type_10 nzl.type.available matches 0 run scoreboard players set @s nzl.type.select 99
execute if entity @e[tag=nzl.type.10,predicate=uhc:id/team] run scoreboard players set @s nzl.type.select 99

# Si type indisponible
tellraw @s[scores={nzl.type.select=99}] [{"text":"Le type ","color":"#FF3F3F","bold":false},{"text":"Acier","color":"#EFEFEF","bold":true},{"text":" n'est plus disponible.","color":"#FF3F3F","bold":false}]

# Si type disponible
execute if score @s nzl.type.select matches 10 run function nzl:types/evolve/1/item_list/normal
