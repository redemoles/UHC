
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
execute store result score #team uhc.id.team run random value 1..32
scoreboard players set #team uhc.id.random_team 1
scoreboard players set #count uhc.id.random_team 1

## Préparation d'une répartition équitable dans les équipes
scoreboard players operation #team_size uhc.random_team = #team_size uhc.data.setup
execute store result score #player uhc.random_team if entity @a[tag=uhc.player,scores={uhc.id.random_team=0}]
scoreboard players operation #player_modulo uhc.random_team = #player uhc.random_team
scoreboard players operation #player_modulo uhc.random_team %= #team_size uhc.random_team
execute if score #player_modulo uhc.random_team matches 1.. run function uhc:pre_game/player_and_team/random_team/1_pot/balance_setup

execute as @r[tag=uhc.player,scores={uhc.id.random_team=0}] run function uhc:pre_game/player_and_team/random_team/1_pot/join
execute as @r[tag=uhc.player] run function uhc:pre_game/player_and_team/random_team/1_pot/color
execute as @a[tag=uhc.player] run function uhc:in_game/player/misc/team_join/main
