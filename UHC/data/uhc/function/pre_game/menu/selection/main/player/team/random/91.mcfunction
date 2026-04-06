
#> uhc:pre_game/menu/selection/main/player/team/random/91
#
# @within			uhc:pre_game/menu/selection/main/player/gm
#
#
# @description		Formation des équipes
#






tag @s remove uhc.spec
tag @s add uhc.player
execute if score #anonyme_team uhc.data.setup matches 0 run team join 091 @s[tag=!mgs.backroom]
execute if score #anonyme_team uhc.data.setup matches 1 run team join 091 @s[tag=!mgs.backroom]

tellraw @s[scores={uhc.player.lang=061801}] [{"text":"Tu as rejoint les ","color":"#3FE7FF","bold":false},{"text":"Joueurs","color":"#FFDF00","bold":false}]
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"You joined the ","color":"#3FE7FF","bold":false},{"text":"Players","color":"#FFDF00","bold":false}]

scoreboard players set @s uhc.id.team 91
