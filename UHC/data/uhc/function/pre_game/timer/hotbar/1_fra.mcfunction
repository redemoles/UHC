
#> uhc:pre_game/timer/hotbar/1_fra
#
# @within			uhc:pre_game/timer/tick_player
#
#
# @description		Commandes pre-game en tick pour joueurs
#


execute if entity @s[team=091] run return run title @s actionbar [{"text":"","color":"#3FCFFF","bold":true}]
execute if entity @s[team=092] run return run title @s actionbar [{"text":"","color":"#3FCFFF","bold":true}]
execute if entity @s[team=192] run return run title @s actionbar [{"text":"","color":"#3FCFFF","bold":true}]
execute if score @s uhc.id.team matches 01..16 run return run function uhc:pre_game/timer/hotbar/1_fra_01_16
execute if score @s uhc.id.team matches 17..32 run return run function uhc:pre_game/timer/hotbar/1_fra_17_32
execute if entity @s[tag=uhc.spec] run return run title @s actionbar [{"text":"Sélection d'équipe dans l'inventaire","color":"#3FCFFF","bold":true}]
