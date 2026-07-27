
#> uhc:translation/menu/load/settings/border_main_height_limit
#
# @within			uhc:pre_game/menu/load/settings/border/menu
#
#
#
#

## FRA - Français / French
$execute if score @s uhc.player.lang matches 061801 if score @s uhc.menu.settings.border matches ..10 run item replace entity @s inventory.13 with minecraft:bedrock[minecraft:item_name=[{"text":"$(height_text)","color":"#3FE7FF"}],minecraft:lore=[[{"text":"Hauteur > ","color":"#FFFFFF","bold":false,"italic":false},$(height_y_max)],[{"text":"Profondeur > ","color":"#FFFFFF","bold":false,"italic":false},$(height_y_min)],[{"text":"Activation > ","color":"#FFFFFF","bold":false,"italic":false},$(height_y_timer),{"text":" minutes","color":"#FFFFFF","bold":false,"italic":false}]],minecraft:custom_data={Tags:"settings_border"}]
$execute if score @s uhc.player.lang matches 061801 if score @s uhc.menu.settings.border matches 11.. run item replace entity @s inventory.4 with minecraft:bedrock[minecraft:item_name=[{"text":"$(height_text)","color":"#3FE7FF"}],minecraft:lore=[[{"text":"Hauteur > ","color":"#FFFFFF","bold":false,"italic":false},$(height_y_max)],[{"text":"Profondeur > ","color":"#FFFFFF","bold":false,"italic":false},$(height_y_min)],[{"text":"Activation > ","color":"#FFFFFF","bold":false,"italic":false},$(height_y_timer),{"text":" minutes","color":"#FFFFFF","bold":false,"italic":false}]],minecraft:custom_data={Tags:"settings_border"}]

## ENG - English
$execute if score @s uhc.player.lang matches 051407 if score @s uhc.menu.settings.border matches ..10 run item replace entity @s inventory.13 with minecraft:bedrock[minecraft:item_name=[{"text":"$(height_text)","color":"#3FE7FF"}],minecraft:lore=[[{"text":"Height > ","color":"#FFFFFF","bold":false,"italic":false},$(height_y_max)],[{"text":"Depth > ","color":"#FFFFFF","bold":false,"italic":false},$(height_y_min)],[{"text":"Activation > ","color":"#FFFFFF","bold":false,"italic":false},$(height_y_timer),{"text":" minutes","color":"#FFFFFF","bold":false,"italic":false}]],minecraft:custom_data={Tags:"settings_border"}]
$execute if score @s uhc.player.lang matches 051407 if score @s uhc.menu.settings.border matches 11.. run item replace entity @s inventory.4 with minecraft:bedrock[minecraft:item_name=[{"text":"$(height_text)","color":"#3FE7FF"}],minecraft:lore=[[{"text":"Height > ","color":"#FFFFFF","bold":false,"italic":false},$(height_y_max)],[{"text":"Depth > ","color":"#FFFFFF","bold":false,"italic":false},$(height_y_min)],[{"text":"Activation > ","color":"#FFFFFF","bold":false,"italic":false},$(height_y_timer),{"text":" minutes","color":"#FFFFFF","bold":false,"italic":false}]],minecraft:custom_data={Tags:"settings_border"}]
