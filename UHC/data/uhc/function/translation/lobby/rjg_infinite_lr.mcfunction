
#> uhc:translation/lobby/rjg_infinite_lr
#
# @within			lobby:mini_games/rjg/record/infinite/lr
#
#
#
#

## FRA - Français / French
execute as @a[tag=!mgs.tc.player,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":" Infini","color":"#FFE73F","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" Nouveau record local !","color":"#FFE73F"},{"text":"\nScore : "},{"score":{"name":"#record","objective":"lobby.rjg.record.infinite.score"},"color":"#FFE73F"},{"text":", par "},{"selector":"@p[tag=mgs.jump.record]"}]

## ENG - English
execute as @a[tag=!mgs.tc.player,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Infinite ","color":"#FFE73F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" New local record!","color":"#FFE73F"},{"text":"\nScore: "},{"score":{"name":"#record","objective":"lobby.rjg.record.infinite.score"},"color":"#FFE73F"},{"text":", by "},{"selector":"@p[tag=mgs.jump.record]"}]
