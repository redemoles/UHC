
#> nzl:types/evolve/1/disponible/tenebres
#
# @within			nzl:types/evolve/1/
#
#
# @description		Test si ce type est disponible
#

# Type disponible ?
scoreboard players operation #team uhc.id.team = @s uhc.id.team
execute if score #type_17 nzl.type.available matches 0 run scoreboard players set @s nzl.type.select 99
execute if entity @e[tag=nzl.type.17,predicate=uhc:id/team] run scoreboard players set @s nzl.type.select 99

# Si type indisponible
tellraw @s[scores={nzl.type.select=99}] [{"text":"Le type ","color":"#FF3F3F","bold":false},{"text":"Ténèbres","color":"#5F3F3F","bold":true},{"text":" n'est plus disponible.","color":"#FF3F3F","bold":false}]

# Si type disponible
execute if score @s nzl.type.select matches 17 run function nzl:types/evolve/1/item_list/tenebres
