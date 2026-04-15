
#> uhc:translation/bhc/99_bhc_run/teleportation
#
# @within			bhc:timer/countdown/bhc_run
#
#
#
#

## FRA - Français / French
execute if score #shrink_1_time_left uhc.data.temp matches 2..5 run tellraw @a[tag=!uhc.target.targeter_done,scores={uhc.player.lang=061801}] [{"text":"Téléportation ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Activée dans ","color":"#FFFFFF","bold":false},{"score":{"name":"#pvp","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minutes !","color":"#FFFFFF","bold":false}]
execute if score #shrink_1_time_left uhc.data.temp matches 1 run tellraw @a[tag=!uhc.target.targeter_done,scores={uhc.player.lang=061801}] [{"text":"Téléportation ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Activée dans ","color":"#FFFFFF","bold":false},{"score":{"name":"#pvp","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minute !","color":"#FFFFFF","bold":false}]
execute if score #shrink_1_time_left uhc.data.temp matches 0 run tellraw @a[tag=!uhc.target.targeter_done,scores={uhc.player.lang=061801}] [{"text":"Téléportation ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Activation !","color":"#FFFFFF","bold":false}]

## ENG - English
execute if score #shrink_1_time_left uhc.data.temp matches 2..5 run tellraw @a[tag=!uhc.target.targeter_done,scores={uhc.player.lang=051407}] [{"text":"Teleportation ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Enabled in ","color":"#FFFFFF","bold":false},{"score":{"name":"#pvp","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minutes!","color":"#FFFFFF","bold":false}]
execute if score #shrink_1_time_left uhc.data.temp matches 1 run tellraw @a[tag=!uhc.target.targeter_done,scores={uhc.player.lang=051407}] [{"text":"Teleportation ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Enabled in ","color":"#FFFFFF","bold":false},{"score":{"name":"#pvp","objective":"uhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minute!","color":"#FFFFFF","bold":false}]
execute if score #shrink_1_time_left uhc.data.temp matches 0 run tellraw @a[tag=!uhc.target.targeter_done,scores={uhc.player.lang=051407}] [{"text":"Teleportation ","color":"#FF3F3F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" Enabled! ","color":"#FFFFFF","bold":false}]
