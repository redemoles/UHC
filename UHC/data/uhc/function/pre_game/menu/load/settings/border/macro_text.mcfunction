
#> uhc:pre_game/menu/load/settings/border/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.4 with minecraft:heart_of_the_sea[minecraft:item_name=[{"text":"Bordure du monde","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"Taille initiale > ","color":"#FFFFFF","italic":false},$(shrink_1_size_start),{"text":"/","color":"#FFFFFF","italic":false,"bold":false},{"text":"-","color":"#FF3F3F","italic":false,"bold":true},$(shrink_1_size_start)]],minecraft:custom_data={Tags:"settings_border"}]
$item replace entity @s[scores={uhc.player.lang=061801,uhc.menu.settings.border=1},tag=uhc.host] inventory.22 with minecraft:heart_of_the_sea[minecraft:item_name=[{"text":"Bordure du monde","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"Taille initiale > ","color":"#FFFFFF","italic":false},$(shrink_1_size_start),{"text":"/","color":"#FFFFFF","italic":false,"bold":false},{"text":"-","color":"#FF3F3F","italic":false,"bold":true},$(shrink_1_size_start)]],minecraft:custom_data={Tags:"settings_border"}]

$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.4 with minecraft:heart_of_the_sea[minecraft:item_name=[{"text":"World border","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"Initial size > ","color":"#FFFFFF","italic":false},$(shrink_1_size_start),{"text":"/","color":"#FFFFFF","italic":false,"bold":false},{"text":"-","color":"#FF3F3F","italic":false,"bold":true},$(shrink_1_size_start)]],minecraft:custom_data={Tags:"settings_border"}]
$item replace entity @s[scores={uhc.player.lang=051407,uhc.menu.settings.border=1},tag=uhc.host] inventory.22 with minecraft:heart_of_the_sea[minecraft:item_name=[{"text":"World border","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"Initial size > ","color":"#FFFFFF","italic":false},$(shrink_1_size_start),{"text":"/","color":"#FFFFFF","italic":false,"bold":false},{"text":"-","color":"#FF3F3F","italic":false,"bold":true},$(shrink_1_size_start)]],minecraft:custom_data={Tags:"settings_border"}]
