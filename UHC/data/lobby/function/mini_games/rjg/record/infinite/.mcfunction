
#> lobby:mini_games/rjg/record/infinite/
#
# @within			lobby:mini_games/rjg/player/out
#
#
# @description		Comparaison du score avec les records
#

execute unless score @s lobby.rjg.record.infinite.score >= @s lobby.rjg.score.sb run return run function lobby:mini_games/rjg/record/infinite/new_pb
execute if score @s lobby.rjg.full_cycle matches 1.. run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":" Infini","color":"#FFE73F","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" "},{"selector":"@s"},{"text":" est tombé !\nScore : "},{"score":{"name":"@s","objective":"lobby.rjg.score.sb"},"color":"#FFE73F"}]
execute if score @s lobby.rjg.full_cycle matches 1.. run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Infinite ","color":"#FFE73F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" "},{"selector":"@s"},{"text":" fell!\nScore: "},{"score":{"name":"@s","objective":"lobby.rjg.score.sb"},"color":"#FFE73F"}]
execute if score @s lobby.rjg.full_cycle matches 0 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":" Infini","color":"#FFE73F","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" Score : "},{"score":{"name":"@s","objective":"lobby.rjg.score.sb"},"color":"#FFE73F"}]
execute if score @s lobby.rjg.full_cycle matches 0 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Infinite ","color":"#FFE73F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" Score: "},{"score":{"name":"@s","objective":"lobby.rjg.score.sb"},"color":"#FFE73F"}]
