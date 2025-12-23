
#> nzl:types/evolve/1/disponible/glace
#
# @within			nzl:types/evolve/1/
#
#
# @description		Test si ce type est disponible
#

# Type disponible ?
scoreboard players operation #team uhc.id.team = @s uhc.id.team
execute if score #type_08 nzl.type.available matches 0 run scoreboard players set @s nzl.type.select 99
execute if entity @e[tag=nzl.type.08,predicate=uhc:id_team] run scoreboard players set @s nzl.type.select 99

# Si type indisponible
tellraw @s[scores={nzl.type.select=99}] [{"text":"Le type ","color":"#FF3F3F","bold":false},{"text":"Glace","color":"#BFDFFF","bold":true},{"text":" n'est plus disponible.","color":"#FF3F3F","bold":false}]

# Si type disponible
execute if score @s nzl.type.select matches 08 run function nzl:types/evolve/1/item_list/glace
