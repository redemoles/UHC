
#> uhc:pre_game/menu/load/main/player/team_join/spec
#
# @within			uhc:pre_game/menu/selection/main/player/gm
#
#
# @description		Ajout des spectateurs
#

tag @s add uhc.spec
tag @s remove uhc.player
team join 099 @s[tag=!uhc.host,tag=!mgs.backroom]
team join 099.host @s[tag=uhc.host,tag=!mgs.backroom]

tellraw @s[scores={uhc.player.lang=061801}] [{"text":"Tu as rejoint les ","color":"#3F9FFF","bold":false}, {"text":"Spectateurs","color":"aqua"}]
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"You joined the ","color":"#3F9FFF","bold":false}, {"text":"Spectators","color":"aqua"}]

scoreboard players reset @s uhc.id.team
tag @s remove uhc.random_team.in_a_team
