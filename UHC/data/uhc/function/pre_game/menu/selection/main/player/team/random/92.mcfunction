
#> uhc:pre_game/menu/selection/main/player/team/random/92
#
# @within			uhc:pre_game/menu/selection/main/player/gm
#
#
# @description		Formation des équipes
#






tag @s remove uhc.spec
tag @s add uhc.player
execute if score #anonyme_team uhc.data.setup matches 0 run team join 092 @s
execute if score #anonyme_team uhc.data.setup matches 1 run team join 092 @s

tellraw @s[scores={uhc.player.lang=061801}] [{"text":"Tu as rejoint les ","color":"#3FE7FF","bold":false},{"text":"Joueurs (Groupe A)","color":"#3F57FF","bold":false}]
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"You joined the ","color":"#3FE7FF","bold":false},{"text":"Players (Group A)","color":"#3F57FF","bold":false}]

scoreboard players set @s uhc.id.team 92
