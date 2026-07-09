
#> uhc:pre_game/menu/load/settings/team/team_size/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:chest[minecraft:item_name=[{"text":"Joueurs par équipe > ","color":"#3FE7FF","italic":false},$(team_size_text)],minecraft:custom_data={Tags:"team_size"}] $(team_size_count)
$item replace entity @s[scores={uhc.player.lang=061801,uhc.menu.settings.team=2}] inventory.22 with minecraft:chest[minecraft:item_name=[{"text":"Joueurs par équipe > ","color":"#3FE7FF","italic":false},$(team_size_text)],minecraft:custom_data={Tags:"team_size"}] $(team_size_count)

$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:chest[minecraft:item_name=[{"text":"Players per team > ","color":"#3FE7FF","italic":false},$(team_size_text)],minecraft:custom_data={Tags:"team_size"}] $(team_size_count)
$item replace entity @s[scores={uhc.player.lang=051407,uhc.menu.settings.team=2}] inventory.22 with minecraft:chest[minecraft:item_name=[{"text":"Players per team > ","color":"#3FE7FF","italic":false},$(team_size_text)],minecraft:custom_data={Tags:"team_size"}] $(team_size_count)
