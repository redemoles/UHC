
#> uhc:translation/lobby/rjg_new_cycle
#
# @within			lobby:mini_games/rjg/player/new_block
#
#
#
#

## FRA - Français / French
execute if score @s lobby.rjg.full_cycle matches 1 run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":" Infini","color":"#FFE73F","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" "},{"selector":"@s"},{"text":" a terminé "},{"score":{"name":"@s","objective":"lobby.rjg.full_cycle"},"color":"#FFE73F"},{"text":" cycle sans tomber !"}]
execute if score @s lobby.rjg.full_cycle matches 2.. run tellraw @a[scores={uhc.player.lang=061801}] [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":" Infini","color":"#FFE73F","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" "},{"selector":"@s"},{"text":" a terminé "},{"score":{"name":"@s","objective":"lobby.rjg.full_cycle"},"color":"#FFE73F"},{"text":" cycles sans tomber !"}]

## ENG - English
execute if score @s lobby.rjg.full_cycle matches 1 run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Infinite ","color":"#FFE73F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" "},{"selector":"@s"},{"text":" completed "},{"score":{"name":"@s","objective":"lobby.rjg.score.sb"},"color":"#FFE73F"},{"text":" cycle without falling!"}]
execute if score @s lobby.rjg.full_cycle matches 2.. run tellraw @a[scores={uhc.player.lang=051407}] [{"text":"","color":"#FFFFFF"},{"text":"[","color":"#3F3F3F","bold":true},{"text":"Infinite ","color":"#FFE73F","bold":true},{"text":"Jump","color":"#F3F3F3","bold":true},{"text":"]","color":"#3F3F3F","bold":true},{"text":" "},{"selector":"@s"},{"text":" completed "},{"score":{"name":"@s","objective":"lobby.rjg.score.sb"},"color":"#FFE73F"},{"text":" cycles without falling!"}]
