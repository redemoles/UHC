
#> uhc:translation/bhc/01_gold_rush/bingo_b_countdown_end
#
# @within			bhc:timer/cooldown/stepb_01
#
#
#
#

## FRA - Français / French
execute unless score #stepb_end bhc.data.temp matches ..1 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"[","color":"#FFFFFF","bold":true},{"text":"Bingo","color":"#B73FFF"},{"text":"UHC","color":"#FFE73F"},{"text":"]","color":"#FFFFFF"},{"text":" Fin de la ","color":"#FFFFFF","bold":false},{"text":"Ruée vers l'Or","color":"#FFE73F","bold":true},{"text":" dans ","color":"#FFFFFF","bold":false},{"score":{"name":"#stepb_end","objective":"bhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minutes !","color":"#FFFFFF","bold":false}]
execute if score #stepb_end bhc.data.temp matches 1 as @a[scores={uhc.player.lang=061801}] run tellraw @s [{"text":"[","color":"#FFFFFF","bold":true},{"text":"Bingo","color":"#B73FFF"},{"text":"UHC","color":"#FFE73F"},{"text":"]","color":"#FFFFFF"},{"text":" Fin de la ","color":"#FFFFFF","bold":false},{"text":"Ruée vers l'Or","color":"#FFE73F","bold":true},{"text":" dans ","color":"#FFFFFF","bold":false},{"score":{"name":"#stepb_end","objective":"bhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minute !","color":"#FFFFFF","bold":false}]

## ENG - English
execute unless score #stepb_end bhc.data.temp matches ..1 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"[","color":"#FFFFFF","bold":true},{"text":"Bingo","color":"#B73FFF"},{"text":"UHC","color":"#FFE73F"},{"text":"]","color":"#FFFFFF"},{"text":" End of the ","color":"#FFFFFF","bold":false},{"text":"Gold Rush","color":"#FFE73F","bold":true},{"text":" in ","color":"#FFFFFF","bold":false},{"score":{"name":"#stepb_end","objective":"bhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minutes!","color":"#FFFFFF","bold":false}]
execute if score #stepb_end bhc.data.temp matches 1 as @a[scores={uhc.player.lang=051407}] run tellraw @s [{"text":"[","color":"#FFFFFF","bold":true},{"text":"Bingo","color":"#B73FFF"},{"text":"UHC","color":"#FFE73F"},{"text":"]","color":"#FFFFFF"},{"text":" End of the ","color":"#FFFFFF","bold":false},{"text":"Gold Rush","color":"#FFE73F","bold":true},{"text":" in ","color":"#FFFFFF","bold":false},{"score":{"name":"#stepb_end","objective":"bhc.data.temp"},"color":"#FFFFFF","bold":false},{"text":" minute!","color":"#FFFFFF","bold":false}]
