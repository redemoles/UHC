
#> uhc:pre_game/player_and_team/random_team/test/join
#
# @within			uhc:pre_game/player_and_team/random_team/test/
#
#
# @description		Génération d'équipes aléatoires
#

tag @s remove uhc.random_team.ban

# Ban list du joueur
scoreboard players operation #ban uhc.id.random_team.ban = @s uhc.id.random_team.ban
execute unless score @s uhc.id.random_team.ban matches 100..399 run scoreboard players set #ban uhc.id.random_team.ban -1
execute if score @s uhc.id.random_team.ban matches 100..199 run scoreboard players add #ban uhc.id.random_team.ban 100
execute if score @s uhc.id.random_team.ban matches 200..299 run scoreboard players remove #ban uhc.id.random_team.ban 100

# Vérification si l'équipe en cours de génération et le joueur sont compatibles (ban list)
execute if entity @e[type=minecraft:marker,predicate=uhc:random_team_ban] run function uhc:pre_game/player_and_team/random_team/test/ban
execute if entity @s[tag=uhc.random_team.ban] run return fail

# Ajout dans une équipe
scoreboard players operation @s uhc.id.random_team = #team uhc.id.random_team
scoreboard players add #count uhc.id.random_team 1
execute if score #count uhc.id.random_team > #team_size uhc.data.setup run scoreboard players add #team uhc.id.random_team 1 
execute if score #count uhc.id.random_team > #team_size uhc.data.setup run scoreboard players set #count uhc.id.random_team 1
