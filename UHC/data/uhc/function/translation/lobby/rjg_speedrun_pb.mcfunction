
#> uhc:translation/lobby/rjg_speedrun_pb
#
# @within			lobby:mini_games/rjg/record/speedrun/pb
#
#
#
#

## FRA - Français / French
execute as @s[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":" 150","color":"#3FE7FF","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" Nouveau record personnel !\nScore : "},{"score":{"name":"#record","objective":"lobby.rjg.record.speedrun.score"},"color":"#FFE73F"}]

## ENG - English
execute as @s[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"150 ","color":"#3FE7FF","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" New personal best!\nScore: "},{"score":{"name":"#record","objective":"lobby.rjg.record.speedrun.score"},"color":"#FFE73F"}]
