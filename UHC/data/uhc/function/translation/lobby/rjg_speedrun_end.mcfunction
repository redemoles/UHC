
#> uhc:translation/lobby/rjg_speedrun_end
#
# @within			lobby:mini_games/rjg/record/speedrun/end
#
#
#
#

## FRA - Français / French
tellraw @s[scores={uhc.player.lang=061801}] [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":" Speedrun","color":"#3FE7FF","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" Score : "},{"score":{"name":"@s","objective":"lobby.rjg.score.sb"},"color":"#FFE73F"}]

## ENG - English
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Speedrun ","color":"#3FE7FF","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" Score: "},{"score":{"name":"@s","objective":"lobby.rjg.score.sb"},"color":"#FFE73F"}]
