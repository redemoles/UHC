
#> uhc:pre_game/menu/selection/main/player/team/chosen/17-32/24
#
# @within			uhc:pre_game/menu/selection/main/player/gm
#
#
# @description		Formation des équipes
#

execute store result score #temp uhc.data.setup if entity @a[scores={uhc.id.team=24}]
execute if score #temp uhc.data.setup >= #team_size uhc.data.setup if score @s uhc.player.lang matches 061801 run return run tellraw @s [{"text":"Équipe complète","color":"#FF3F3F"}]
execute if score #temp uhc.data.setup >= #team_size uhc.data.setup if score @s uhc.player.lang matches 051407 run return run tellraw @s [{"text":"Team full","color":"#FF3F3F"}]

tag @s remove uhc.spec
tag @s add uhc.player
execute if score #anonyme_team uhc.data.setup matches 0 run team join 024 @s
execute if score #anonyme_team uhc.data.setup matches 1 run team join 091 @s

tellraw @s[scores={uhc.player.lang=061801}] [{"text":"Tu as rejoint l'","color":"#3FE7FF","bold":false},{"text":"♦ Équipe Orange","color":"gold","bold":false}]
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"You joined the ","color":"#3FE7FF","bold":false},{"text":"♦ Orange Team","color":"gold","bold":false}]

scoreboard players set @s uhc.id.team 24
