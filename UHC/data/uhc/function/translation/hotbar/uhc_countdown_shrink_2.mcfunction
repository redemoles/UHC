
#> uhc:translation/hotbar/uhc_countdown_shrink_2
#
# @within			uhc:in_game/timer/hotbar/cooldown/text_tellraw
#
#
#
#

## FRA - Français / French
execute if score #shrink_2_time_left uhc.data.temp matches 2..5 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"2e Réduction ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Activée dans ","color":"#FFFFFF","bold":false},{"score":{"name":"#shrink_2_time_left","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minutes !","color":"#FFFFFF","bold":false}]
execute if score #shrink_2_time_left uhc.data.temp matches 1 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"2e Réduction ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Activée dans ","color":"#FFFFFF","bold":false},{"score":{"name":"#shrink_2_time_left","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minute !","color":"#FFFFFF","bold":false}]
$execute if score #shrink_2_time_left uhc.data.temp matches 0 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"2e Réduction ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Fin de la réduction dans ","color":"#FFFFFF","bold":false},{"text":"$(border_length) minutes","color":"#FF3F3F","bold":false},{"text":" en ","color":"#FFFFFF","bold":false},{"text":"$(border_size)","color":"#FF3F3F","bold":false},{"text":"/","color":"#FFFFFF","bold":false},{"text":"-","color":"#FF3F3F","bold":false},{"text":"$(border_size)","color":"#FF3F3F","bold":false}]

## ENG - English
execute if score #shrink_2_time_left uhc.data.temp matches 2..5 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"2nd Shrink ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Enabled in ","color":"#FFFFFF","bold":false},{"score":{"name":"#shrink_2_time_left","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minutes!","color":"#FFFFFF","bold":false}]
execute if score #shrink_2_time_left uhc.data.temp matches 1 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"2nd Shrink ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Enabled in ","color":"#FFFFFF","bold":false},{"score":{"name":"#shrink_2_time_left","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minute!","color":"#FFFFFF","bold":false}]
$execute if score #shrink_2_time_left uhc.data.temp matches 0 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"2nd Shrink ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" End of shrinkage in ","color":"#FFFFFF","bold":false},{"text":"$(border_length) minutes","color":"#FF3F3F","bold":false},{"text":" at ","color":"#FFFFFF","bold":false},{"text":"$(border_size)","color":"#FF3F3F","bold":false},{"text":"/","color":"#FFFFFF","bold":false},{"text":"-","color":"#FF3F3F","bold":false},{"text":"$(border_size)","color":"#FF3F3F","bold":false}]
