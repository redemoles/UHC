
#> uhc:translation/menu/load/settings/main_pve
#
# @within			uhc:pre_game/menu/load/settings/inventory/menu
#
#
#
#

## FRA - Français / French
$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.2 with minecraft:golden_apple[minecraft:item_name=[{"text":"PvE","color":"#FF3F3F","italic":false},{"text":", nombre de ","color":"#FFFFFF","italic":false},{"text":"vies","color":"#FF3F3F","italic":false}],minecraft:lore=[[{"text":"Période de Résistance > ","color":"#FFFFFF","italic":false},$(pve),{"text":" minutes","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"settings_lives"}]
$execute if score @s uhc.player.lang matches 061801 if score @s uhc.menu.settings.pve matches 1 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:golden_apple[minecraft:item_name=[{"text":"PvE","color":"#FF3F3F","italic":false},{"text":", nombre de ","color":"#FFFFFF","italic":false},{"text":"vies","color":"#FF3F3F","italic":false}],minecraft:lore=[[{"text":"Période de Résistance > ","color":"#FFFFFF","italic":false},$(pve),{"text":" minutes","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"settings_lives"}]

## ENG - English
$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.2 with minecraft:golden_apple[minecraft:item_name=[{"text":"PvE","color":"#FF3F3F","italic":false},{"text":", number of ","color":"#FFFFFF","italic":false},{"text":"lives","color":"#FF3F3F","italic":false}],minecraft:lore=[[{"text":"Resistance period > ","color":"#FFFFFF","italic":false},$(pve),{"text":" minutes","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"settings_lives"}]
$execute if score @s uhc.player.lang matches 051407 if score @s uhc.menu.settings.pve matches 1 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:golden_apple[minecraft:item_name=[{"text":"PvE","color":"#FF3F3F","italic":false},{"text":", number of ","color":"#FFFFFF","italic":false},{"text":"lives","color":"#FF3F3F","italic":false}],minecraft:lore=[[{"text":"Resistance period > ","color":"#FFFFFF","italic":false},$(pve),{"text":" minutes","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"settings_lives"}]
