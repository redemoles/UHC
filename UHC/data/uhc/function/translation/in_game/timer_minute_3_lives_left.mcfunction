
#> uhc:translation/in_game/timer_minute_3_lives_left
#
# @within			uhc:in_game/timer/minute/main
#
#
#
#

## FRA - Français / French
tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Vies maximum ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"text":"4+","color":"#ffffff","bold":true},{"text":"❤ ","color":"#E73FFF","bold":false},{"text":"→","color":"#FFFFFF","bold":false},{"text":" ❤❤❤","color":"#3FE7FF","bold":false}]

## ENG - English
tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Maximum lives ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" "},{"score":{"name":"@s","objective":"uhc.player.lives"},"color":"#ffffff","bold":true},{"text":"❤ ","color":"#E73FFF","bold":false},{"text":"→","color":"#FFFFFF","bold":false},{"text":" ❤❤❤","color":"#3FE7FF","bold":false}]
