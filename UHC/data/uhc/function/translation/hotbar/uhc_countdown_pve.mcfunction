
#> uhc:translation/hotbar/uhc_countdown_pve
#
# @within			uhc:in_game/timer/hotbar/cooldown/text_tellraw
#
#
#
#

## FRA - Français / French
execute unless score #pve uhc.data.temp matches 11.. unless score #pve uhc.data.temp matches 6..9 unless score #pve uhc.data.temp matches ..1 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Résistance ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Désactivée dans ","color":"#FFFFFF","bold":false},{"score":{"name":"#pve","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minutes !","color":"#FFFFFF","bold":false}]
execute if score #pve uhc.data.temp matches 1 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Résistance ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Désactivée dans ","color":"#FFFFFF","bold":false},{"score":{"name":"#pve","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minute !","color":"#FFFFFF","bold":false}]
execute if score #pve uhc.data.temp matches 0 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Résistance ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Désactivation !","color":"#FF3F3F","bold":false}]

## ENG - English
execute unless score #pve uhc.data.temp matches 11.. unless score #pve uhc.data.temp matches 6..9 unless score #pve uhc.data.temp matches ..1 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Resistance ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Disabled in ","color":"#FFFFFF","bold":false},{"score":{"name":"#pve","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minutes!","color":"#FFFFFF","bold":false}]
execute if score #pve uhc.data.temp matches 1 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Resistance ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Disabled in ","color":"#FFFFFF","bold":false},{"score":{"name":"#pve","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minute!","color":"#FFFFFF","bold":false}]
execute if score #pve uhc.data.temp matches 0 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Resistance ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Disable!","color":"#FF3F3F","bold":false}]
