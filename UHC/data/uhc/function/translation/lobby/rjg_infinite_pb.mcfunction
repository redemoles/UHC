
#> uhc:translation/lobby/rjg_infinite_pb
#
# @within			lobby:mini_games/rjg/record/infinite/pb
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":" Infini","color":"#FFE73F","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" Nouveau record personnel !\nScore : "},{"score":{"name":"@s","objective":"lobby.rjg.record.infinite.score"},"color":"#FFE73F"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Infinite ","color":"#FFE73F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" New personal best!\nScore: "},{"score":{"name":"@s","objective":"lobby.rjg.record.infinite.score"},"color":"#FFE73F"}]
