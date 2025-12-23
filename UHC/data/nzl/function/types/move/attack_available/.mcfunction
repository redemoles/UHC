
#> nzl:types/move/attack_available/
#
# @within			function tag "nzl:advancements/attack_activ.json"
#
#
# @description		Activation de l'attaque
#

execute if score @s nzl.type.player matches 99 at @s as @e[type=marker,predicate=uhc:id_team] run function nzl:types/move/attack_activation/---
execute if score @s nzl.type.player matches 01 at @s as @e[type=marker,predicate=uhc:id_team] run function nzl:types/move/attack_available/acier
execute if score @s nzl.type.player matches 02 at @s as @e[type=marker,predicate=uhc:id_team] run function nzl:types/move/attack_available/combat
execute if score @s nzl.type.player matches 03 at @s as @e[type=marker,predicate=uhc:id_team] run function nzl:types/move/attack_available/dragon
execute if score @s nzl.type.player matches 04 at @s as @e[type=marker,predicate=uhc:id_team] run function nzl:types/move/attack_available/eau
execute if score @s nzl.type.player matches 05 at @s as @e[type=marker,predicate=uhc:id_team] run function nzl:types/move/attack_available/electrique
execute if score @s nzl.type.player matches 06 at @s as @e[type=marker,predicate=uhc:id_team] run function nzl:types/move/attack_available/fee
execute if score @s nzl.type.player matches 07 at @s as @e[type=marker,predicate=uhc:id_team] run function nzl:types/move/attack_available/feu
execute if score @s nzl.type.player matches 08 at @s as @e[type=marker,predicate=uhc:id_team] run function nzl:types/move/attack_available/glace
execute if score @s nzl.type.player matches 09 at @s as @e[type=marker,predicate=uhc:id_team] run function nzl:types/move/attack_available/insecte
execute if score @s nzl.type.player matches 10 at @s as @e[type=marker,predicate=uhc:id_team] run function nzl:types/move/attack_available/normal
execute if score @s nzl.type.player matches 11 at @s as @e[type=marker,predicate=uhc:id_team] run function nzl:types/move/attack_available/plante
execute if score @s nzl.type.player matches 12 at @s as @e[type=marker,predicate=uhc:id_team] run function nzl:types/move/attack_available/poison
execute if score @s nzl.type.player matches 13 at @s as @e[type=marker,predicate=uhc:id_team] run function nzl:types/move/attack_available/psy
execute if score @s nzl.type.player matches 14 at @s as @e[type=marker,predicate=uhc:id_team] run function nzl:types/move/attack_available/roche
execute if score @s nzl.type.player matches 15 at @s as @e[type=marker,predicate=uhc:id_team] run function nzl:types/move/attack_available/sol
execute if score @s nzl.type.player matches 16 at @s as @e[type=marker,predicate=uhc:id_team] run function nzl:types/move/attack_available/spectre
execute if score @s nzl.type.player matches 17 at @s as @e[type=marker,predicate=uhc:id_team] run function nzl:types/move/attack_available/tenebres
execute if score @s nzl.type.player matches 18 at @s as @e[type=marker,predicate=uhc:id_team] run function nzl:types/move/attack_available/vol

kill @e[type=snowball]
stopsound @a neutral minecraft:entity.snowball.throw
scoreboard players set @s nzl.attack.no_flood 10
scoreboard players set @s nzl.attack.right_click 0
