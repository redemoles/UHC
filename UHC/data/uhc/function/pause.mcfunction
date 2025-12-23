
#> uhc:pause
#
# @within			
#
#
# @description		Mettre le jeu en pause, commande manuelle
#

scoreboard players add #pause uhc.data.temp 1
execute if score #pause uhc.data.temp matches 1 if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Refaire ","color":"#FFFFFF"},{"text":"/function uhc:pause","color":"#CFCFCF"},{"text":" pour reprendre\nSi la bordure du monde est en cours de réduction, cette commande ne fonctionne pas","color":"#FFFFFF"}]
execute if score #pause uhc.data.temp matches 1 if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Redo ","color":"#FFFFFF"},{"text":"/function uhc:pause","color":"#CFCFCF"},{"text":" to unpause\nIf world border is shrinking, it will not stop","color":"#FFFFFF"}]
execute if score #pause uhc.data.temp matches 2 run scoreboard players set #pause uhc.data.temp 0
