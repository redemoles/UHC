
#> lobby:mini_games/rjg/player/new_pb
#
# @within			lobby:mini_games/rjg/player/
#
#
# @description		Comparaison du score avec les records
#

scoreboard players operation @s lobby.rjg.record.infinite.score > @s lobby.rjg.score.sb

tag @s add mgs.jump.record
execute unless score #record lobby.rjg.record.infinite.score >= @s lobby.rjg.score.sb run return run function lobby:mini_games/rjg/record/infinite/new_lr

execute as @s[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":" Infini","color":"#FFE73F","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" Nouveau record personnel !\nScore : "},{"score":{"name":"@s","objective":"lobby.rjg.record.infinite.score"},"color":"#FFE73F"}]
execute as @s[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Infinite ","color":"#FFE73F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" New personal best!\nScore: "},{"score":{"name":"@s","objective":"lobby.rjg.record.infinite.score"},"color":"#FFE73F"}]

tag @s remove mgs.jump.record
