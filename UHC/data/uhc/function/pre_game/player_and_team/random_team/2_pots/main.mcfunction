
#> uhc:pre_game/player_and_team/random_team/2_pots/main
#
# @within			uhc:pre_game/tick
#
#
# @description		Génération d'équipes aléatoires
#

team join 092 @a[scores={uhc.id.team=01..92}]
team join 192 @a[scores={uhc.id.team=101..192}]
scoreboard players set @a[team=092] uhc.id.team 92
scoreboard players set @a[team=192] uhc.id.team 192

tag @a[tag=uhc.player] add uhc.random_team.in_a_team

scoreboard players set @a[tag=uhc.player] uhc.id.random_team 0
execute store result score #team uhc.id.team run random value 0..15
scoreboard players set #team uhc.id.random_team 1
scoreboard players set #count uhc.id.random_team 1

function uhc:pre_game/player_and_team/random_team/2_pots/selector

execute as @r[tag=uhc.player] run function uhc:pre_game/player_and_team/random_team/2_pots/color
execute if score #anonyme_team uhc.data.setup matches 0 run function uhc:pre_game/player_and_team/random_team/2_pots/reveal/instant
