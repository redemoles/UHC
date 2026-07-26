
#> uhc:pre_game/player_and_team/random_team/1_pot/color
#
# @within			uhc:pre_game/player_and_team/random_team/1_pot/main
#
#
# @description		Génération d'équipes aléatoires
#

scoreboard players add #team uhc.id.team 3
execute if score #team uhc.id.team matches 33.. run scoreboard players remove #team uhc.id.team 32
scoreboard players operation #team uhc.id.random_team = @s uhc.id.random_team
scoreboard players operation @a[predicate=uhc:random_team] uhc.id.team = #team uhc.id.team

execute as @a[predicate=uhc:id/team] run function uhc:in_game/player/misc/team_join/known_team
function uhc:translation/pre_game/random_team

execute as @r[scores={uhc.id.team=091}] run function uhc:pre_game/player_and_team/random_team/1_pot/color
