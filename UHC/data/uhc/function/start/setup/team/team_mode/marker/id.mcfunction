
#> uhc:start/setup/team/team_mode/marker/id
#
# @within			uhc:start/setup/team/team_mode/main
#
#
# @description		Création des équipes
#

## Id d'équipe des markers
# Id
scoreboard players add #team uhc.id.team 1
scoreboard players operation @s uhc.id.team = #team uhc.id.team
# Id inversé (utilisé Bingo UHC)
scoreboard players operation @s uhc.id.team.inverted = #temp uhc.id.team.inverted
scoreboard players remove #temp uhc.id.team.inverted 1

## Équipe du marker
# Tag + Nom
function uhc:translation/start_game_team_marker_id
# Team join des markers
team join 001 @s[scores={uhc.id.team=01}]
team join 002 @s[scores={uhc.id.team=02}]
team join 003 @s[scores={uhc.id.team=03}]
team join 004 @s[scores={uhc.id.team=04}]
team join 005 @s[scores={uhc.id.team=05}]
team join 006 @s[scores={uhc.id.team=06}]
team join 007 @s[scores={uhc.id.team=07}]
team join 008 @s[scores={uhc.id.team=08}]
team join 009 @s[scores={uhc.id.team=09}]
team join 010 @s[scores={uhc.id.team=10}]
team join 011 @s[scores={uhc.id.team=11}]
team join 012 @s[scores={uhc.id.team=12}]
team join 013 @s[scores={uhc.id.team=13}]
team join 014 @s[scores={uhc.id.team=14}]
team join 015 @s[scores={uhc.id.team=15}]
team join 016 @s[scores={uhc.id.team=16}]
team join 001 @s[scores={uhc.id.team=17}]
team join 002 @s[scores={uhc.id.team=18}]
team join 003 @s[scores={uhc.id.team=19}]
team join 004 @s[scores={uhc.id.team=20}]
team join 005 @s[scores={uhc.id.team=21}]
team join 006 @s[scores={uhc.id.team=22}]
team join 007 @s[scores={uhc.id.team=23}]
team join 008 @s[scores={uhc.id.team=24}]
team join 009 @s[scores={uhc.id.team=25}]
team join 010 @s[scores={uhc.id.team=26}]
team join 011 @s[scores={uhc.id.team=27}]
team join 012 @s[scores={uhc.id.team=28}]
team join 013 @s[scores={uhc.id.team=29}]
team join 014 @s[scores={uhc.id.team=30}]
team join 015 @s[scores={uhc.id.team=31}]
team join 016 @s[scores={uhc.id.team=32}]

## Aucun joueur dans l'équipe
execute if entity @s[tag=uhc.inactive] run return fail

## Joueurs dans l'équipe
# Nombre d'équipe en jeu
scoreboard players add #team uhc.data.temp 1
# Nombre de joueurs dans l'équipe
execute store result score @s uhc.player.lives if entity @a[tag=uhc.player,predicate=uhc:id/team]
scoreboard players operation @s uhc.scenario.ironman = @s uhc.player.lives
scoreboard players operation @s uhc.team.size = @s uhc.player.lives
