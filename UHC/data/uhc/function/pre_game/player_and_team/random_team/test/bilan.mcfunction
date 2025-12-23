
#> uhc:pre_game/player_and_team/random_team/test/
#
# @within			uhc:pre_game/tick
#
#
# @description		Génération d'équipes aléatoires
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
tellraw @a [{"selector":"@e[predicate=uhc:id_team]"}]
tag @e[type=marker,predicate=uhc:id_team] add uhc.bilan
execute if entity @s[tag=!uhc.bilan] run say ok

execute as @n[type=marker,tag=uhc.player.test,tag=!uhc.bilan] run function uhc:pre_game/player_and_team/random_team/test/bilan
