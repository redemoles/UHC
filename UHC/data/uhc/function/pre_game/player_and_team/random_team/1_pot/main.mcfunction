
#> uhc:pre_game/player_and_team/random_team/1_pot/main
#
# @within			uhc:pre_game/tick
#
#
# @description		Génération d'équipes aléatoires
#

execute as @a unless entity @s[tag=uhc.spec] run team join 091 @s
scoreboard players set @a[team=091] uhc.id.team 91

tag @a[tag=uhc.player] add uhc.random_team.in_a_team

scoreboard players set @a[tag=uhc.player] uhc.id.random_team 0
execute store result score #team uhc.id.team run random value 0..15
scoreboard players set #team uhc.id.random_team 1
scoreboard players set #count uhc.id.random_team 1

function uhc:pre_game/player_and_team/random_team/1_pot/selector
execute as @r[tag=uhc.player] run function uhc:pre_game/player_and_team/random_team/1_pot/color
execute if score #anonyme_team uhc.data.setup matches 0 run function uhc:pre_game/player_and_team/random_team/1_pot/reveal/instant
