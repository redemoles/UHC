
#> uhc:pre_game/player_and_team/random_team/test/color
#
# @within			uhc:pre_game/player_and_team/random_team/test/
#
#
# @description		Génération d'équipes aléatoires
#

execute if score #team uhc.id.team matches 16.. run scoreboard players set #team uhc.id.team 0
scoreboard players add #team uhc.id.team 1
scoreboard players operation #team uhc.id.random_team = @s uhc.id.random_team
scoreboard players operation @e[type=marker,predicate=uhc:random_team] uhc.id.team = #team uhc.id.team

team join 001 @e[type=marker,scores={uhc.id.team=01}]
team join 002 @e[type=marker,scores={uhc.id.team=02}]
team join 003 @e[type=marker,scores={uhc.id.team=03}]
team join 004 @e[type=marker,scores={uhc.id.team=04}]
team join 005 @e[type=marker,scores={uhc.id.team=05}]
team join 006 @e[type=marker,scores={uhc.id.team=06}]
team join 007 @e[type=marker,scores={uhc.id.team=07}]
team join 008 @e[type=marker,scores={uhc.id.team=08}]
team join 009 @e[type=marker,scores={uhc.id.team=09}]
team join 010 @e[type=marker,scores={uhc.id.team=10}]
team join 011 @e[type=marker,scores={uhc.id.team=11}]
team join 012 @e[type=marker,scores={uhc.id.team=12}]
team join 013 @e[type=marker,scores={uhc.id.team=13}]
team join 014 @e[type=marker,scores={uhc.id.team=14}]
team join 015 @e[type=marker,scores={uhc.id.team=15}]
team join 016 @e[type=marker,scores={uhc.id.team=16}]

execute unless entity @s[tag=uhc.player.test,scores={uhc.id.team=0}] as @e[type=marker,sort=random,limit=1,tag=uhc.player.test,scores={uhc.id.team=0}] run function uhc:pre_game/player_and_team/random_team/test/color
