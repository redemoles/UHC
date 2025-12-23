
#> lobby:mini_games/rjg/player/new_lr
#
# @within			lobby:mini_games/rjg/player/new_pb
#
#
# @description		Comparaison du score avec les records
#

scoreboard players operation #record lobby.rjg.record.infinite.score > @s lobby.rjg.score.sb

execute as @a[tag=!mgs.tc.player,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":" Infini","color":"#FFE73F","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" Nouveau record local !","color":"#FFE73F"},{"text":"\nScore : "},{"score":{"name":"#record","objective":"lobby.rjg.record.infinite.score"},"color":"#FFE73F"},{"text":", par "},{"selector":"@p[tag=mgs.jump.record]"}]
execute as @a[tag=!mgs.tc.player,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Infinite ","color":"#FFE73F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" New local record!","color":"#FFE73F"},{"text":"\nScore: "},{"score":{"name":"#record","objective":"lobby.rjg.record.infinite.score"},"color":"#FFE73F"},{"text":", by "},{"selector":"@p[tag=mgs.jump.record]"}]

tag @s remove mgs.jump.record
