
#> uhc:in_game/player/pvp/settings/horse/
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Chevaux désactivés
#

execute if score @s uhc.player.lang matches 061801 run tellraw @s [{"text":"Chevaux désactivés.","color":"#FF3F3F"}]
execute if score @s uhc.player.lang matches 051407 run tellraw @s [{"text":"Horses disabled.","color":"#FF3F3F"}]

ride @s dismount
