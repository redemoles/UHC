
#> uhc:translation/hotbar/scenario_go_to_hell
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Affichage Hotbar Alerte
#

## FRA - Français / French
execute unless score #sky_high uhc.data.temp matches 6..9 unless score #sky_high uhc.data.temp matches ..1 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Sky High ","color":"#3FE7FF","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Activée dans ","color":"#FFFFFF","bold":false},{"score":{"name":"#sky_high","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minutes !","color":"#FFFFFF","bold":false}]
execute if score #sky_high uhc.data.temp matches 1 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Sky High ","color":"#3FE7FF","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Activée dans ","color":"#FFFFFF","bold":false},{"score":{"name":"#sky_high","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minute !","color":"#FFFFFF","bold":false}]
execute if score #sky_high uhc.data.temp matches 0 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Sky High ","color":"#3FE7FF","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Activation !","color":"#FF3F3F","bold":false}]

## ENG - English
execute unless score #sky_high uhc.data.temp matches 6..9 unless score #sky_high uhc.data.temp matches ..1 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Sky High ","color":"#3FE7FF","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Enabled in ","color":"#FFFFFF","bold":false},{"score":{"name":"#sky_high","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minutes !","color":"#FFFFFF","bold":false}]
execute if score #sky_high uhc.data.temp matches 1 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Sky High ","color":"#3FE7FF","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Enabled in ","color":"#FFFFFF","bold":false},{"score":{"name":"#sky_high","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minute !","color":"#FFFFFF","bold":false}]
execute if score #sky_high uhc.data.temp matches 0 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Sky High ","color":"#3FE7FF","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Enable!","color":"#FF3F3F","bold":false}]
