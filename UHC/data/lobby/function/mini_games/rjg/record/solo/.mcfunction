
#> lobby:mini_games/rjg/record/solo/
#
# @within			lobby:mini_games/rjg/player/out
#
#
# @description		Comparaison du score avec les records
#

execute unless score @s lobby.rjg.record.solo.score >= @s lobby.rjg.score.sb run return run function lobby:mini_games/rjg/record/solo/new_pb
tellraw @s[scores={uhc.player.lang=061801}] [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":" 150","color":"#3FE7FF","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" Score : "},{"score":{"name":"@s","objective":"lobby.rjg.score.sb"},"color":"#FFE73F"}]
tellraw @s[scores={uhc.player.lang=051407}] [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"150 ","color":"#3FE7FF","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" Score: "},{"score":{"name":"@s","objective":"lobby.rjg.score.sb"},"color":"#FFE73F"}]
