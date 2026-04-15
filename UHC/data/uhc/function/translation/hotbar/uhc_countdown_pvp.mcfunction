
#> uhc:translation/hotbar/uhc_countdown_pvp
#
# @within			uhc:in_game/timer/hotbar/cooldown/text_tellraw
#
#
#
#

## FRA - Français / French
execute unless score #pvp uhc.data.temp matches 11.. unless score #pvp uhc.data.temp matches 6..9 unless score #pvp uhc.data.temp matches ..1 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"PvP ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Activé dans ","color":"#FFFFFF","bold":false},{"score":{"name":"#pvp","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minutes !","color":"#FFFFFF","bold":false}]
execute if score #pvp uhc.data.temp matches 1 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"PvP ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Activé dans ","color":"#FFFFFF","bold":false},{"score":{"name":"#pvp","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minute !","color":"#FFFFFF","bold":false}]
execute if score #pvp uhc.data.temp matches 0 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"PvP ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Activation !","color":"#FF3F3F","bold":false}]

## ENG - English
execute unless score #pvp uhc.data.temp matches 11.. unless score #pvp uhc.data.temp matches 6..9 unless score #pvp uhc.data.temp matches ..1 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"PvP ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Enabled in ","color":"#FFFFFF","bold":false},{"score":{"name":"#pvp","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minutes!","color":"#FFFFFF","bold":false}]
execute if score #pvp uhc.data.temp matches 1 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"PvP ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Enabled in ","color":"#FFFFFF","bold":false},{"score":{"name":"#pvp","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minute!","color":"#FFFFFF","bold":false}]
execute if score #pvp uhc.data.temp matches 0 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"PvP ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Enable!","color":"#FF3F3F","bold":false}]
