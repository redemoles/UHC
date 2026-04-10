
#> nzl:types/move/attack/combat_p1
#
# @within			function tag "nzl:advancements/combat_attack_p1.json"
#
#
# @description		Dynamo-poing attaquant
#

# Fin de Dynamo-poing
scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players set @e[type=minecraft:marker,tag=UHC,predicate=uhc:id/team] nzl.attack.length.02 0
advancement revoke @s only nzl:combat_attack_p1
