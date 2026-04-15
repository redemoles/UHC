
#> uhc:translation/bhc/00_vanilla/bingo_b_countdown_start
#
# @within			bhc:timer/cooldown/stepb_00
#
#
#
#

## FRA - Français / French
execute unless score #stepb_start bhc.data.temp matches ..1 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"[","color":"#FFFFFF","bold":true},{"text":"Bingo","color":"#B73FFF"},{"text":"UHC","color":"#FFE73F"},{"text":"]","color":"#FFFFFF"},{"text":" Début du ","color":"#FFFFFF","bold":false},{"text":"Bingo Classique B","color":"#B73FFF","bold":true},{"text":" dans ","color":"#FFFFFF","bold":false},{"score":{"name":"#stepb_start","objective":"bhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minutes !","color":"#FFFFFF","bold":false}]
execute if score #stepb_start bhc.data.temp matches 1 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"[","color":"#FFFFFF","bold":true},{"text":"Bingo","color":"#B73FFF"},{"text":"UHC","color":"#FFE73F"},{"text":"]","color":"#FFFFFF"},{"text":" Début du ","color":"#FFFFFF","bold":false},{"text":"Bingo Classique B","color":"#B73FFF","bold":true},{"text":" dans ","color":"#FFFFFF","bold":false},{"score":{"name":"#stepb_start","objective":"bhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minute !","color":"#FFFFFF","bold":false}]

## ENG - English
execute unless score #stepb_start bhc.data.temp matches ..1 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"[","color":"#FFFFFF","bold":true},{"text":"Bingo","color":"#B73FFF"},{"text":"UHC","color":"#FFE73F"},{"text":"]","color":"#FFFFFF"},{"text":" Start of the ","color":"#FFFFFF","bold":false},{"text":"Classic Bingo B","color":"#B73FFF","bold":true},{"text":" in ","color":"#FFFFFF","bold":false},{"score":{"name":"#stepb_start","objective":"bhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minutes!","color":"#FFFFFF","bold":false}]
execute if score #stepb_start bhc.data.temp matches 1 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"[","color":"#FFFFFF","bold":true},{"text":"Bingo","color":"#B73FFF"},{"text":"UHC","color":"#FFE73F"},{"text":"]","color":"#FFFFFF"},{"text":" Start of the ","color":"#FFFFFF","bold":false},{"text":"Classic Bingo B","color":"#B73FFF","bold":true},{"text":" in ","color":"#FFFFFF","bold":false},{"score":{"name":"#stepb_start","objective":"bhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minute!","color":"#FFFFFF","bold":false}]
