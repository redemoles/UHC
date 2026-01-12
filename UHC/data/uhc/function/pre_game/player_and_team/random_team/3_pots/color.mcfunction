
#> uhc:pre_game/player_and_team/random_team/3_pots/color
#
# @within			uhc:pre_game/player_and_team/random_team/3_pots/
#
#
# @description		Génération d'équipes aléatoires
#

scoreboard players add #team uhc.id.team 3
execute if score #team uhc.id.team matches 17.. run scoreboard players remove #team uhc.id.team 16
scoreboard players operation #team uhc.id.random_team = @s uhc.id.random_team
scoreboard players operation @a[predicate=uhc:random_team] uhc.id.team = #team uhc.id.team

execute as @r[scores={uhc.id.team=092}] run return run function uhc:pre_game/player_and_team/random_team/3_pots/color
execute as @r[scores={uhc.id.team=192}] run return run function uhc:pre_game/player_and_team/random_team/3_pots/color
execute as @r[scores={uhc.id.team=292}] run return run function uhc:pre_game/player_and_team/random_team/3_pots/color
