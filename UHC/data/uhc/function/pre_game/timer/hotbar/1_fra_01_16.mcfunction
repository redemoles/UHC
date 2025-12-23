
#> uhc:pre_game/timer/hotbar/1_fra_01_16
#
# @within			uhc:pre_game/timer/hotbar/1_fra
#
#
# @description		Commandes pre-game en tick pour joueurs
#

execute if score @s uhc.id.team matches 01 run return run title @s actionbar [{"text":"Équipe Indigo","color":"dark_blue","bold":true}]
execute if score @s uhc.id.team matches 02 run return run title @s actionbar [{"text":"Équipe Bleue","color":"blue","bold":true}]
execute if score @s uhc.id.team matches 03 run return run title @s actionbar [{"text":"Équipe Azur","color":"dark_aqua","bold":true}]
execute if score @s uhc.id.team matches 04 run return run title @s actionbar [{"text":"Équipe Cyan","color":"aqua","bold":true}]
execute if score @s uhc.id.team matches 05 run return run title @s actionbar [{"text":"Équipe Vert f.","color":"dark_green","bold":true}]
execute if score @s uhc.id.team matches 06 run return run title @s actionbar [{"text":"Équipe Vert c.","color":"green","bold":true}]
execute if score @s uhc.id.team matches 07 run return run title @s actionbar [{"text":"Équipe Jaune","color":"yellow","bold":true}]
execute if score @s uhc.id.team matches 08 run return run title @s actionbar [{"text":"Équipe Orange","color":"gold","bold":true}]
execute if score @s uhc.id.team matches 09 run return run title @s actionbar [{"text":"Équipe Rouge c.","color":"red","bold":true}]
execute if score @s uhc.id.team matches 10 run return run title @s actionbar [{"text":"Équipe Rouge f.","color":"dark_red","bold":true}]
execute if score @s uhc.id.team matches 11 run return run title @s actionbar [{"text":"Équipe Violette","color":"dark_purple","bold":true}]
execute if score @s uhc.id.team matches 12 run return run title @s actionbar [{"text":"Équipe Rose","color":"light_purple","bold":true}]
execute if score @s uhc.id.team matches 13 run return run title @s actionbar [{"text":"Équipe Blanche","color":"white","bold":true}]
execute if score @s uhc.id.team matches 14 run return run title @s actionbar [{"text":"Équipe Gris c.","color":"gray","bold":true}]
execute if score @s uhc.id.team matches 15 run return run title @s actionbar [{"text":"Équipe Gris f.","color":"dark_gray","bold":true}]
execute if score @s uhc.id.team matches 16 run return run title @s actionbar [{"text":"Équipe Noire","color":"black","bold":true}]
