
#> uhc:pre_game/menu/load/team_settings/team_size/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.2 with minecraft:chest[minecraft:item_name=[{"text":"Joueurs par équipe : ","color":"#3FE7FF","italic":false},$(interpreted_2)],minecraft:custom_data={Tags:"team_size"}] $(interpreted_3)
$item replace entity @s[scores={uhc.player.lang=061801,uhc.menu.team_settings=2}] inventory.22 with minecraft:chest[minecraft:item_name=[{"text":"Joueurs par équipe : ","color":"#3FE7FF","italic":false},$(interpreted_2)],minecraft:custom_data={Tags:"team_size"}] $(interpreted_3)

$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.2 with minecraft:chest[minecraft:item_name=[{"text":"Players per team : ","color":"#3FE7FF","italic":false},$(interpreted_2)],minecraft:custom_data={Tags:"team_size"}] $(interpreted_3)
$item replace entity @s[scores={uhc.player.lang=051407,uhc.menu.team_settings=2}] inventory.22 with minecraft:chest[minecraft:item_name=[{"text":"Players per team : ","color":"#3FE7FF","italic":false},$(interpreted_2)],minecraft:custom_data={Tags:"team_size"}] $(interpreted_3)
