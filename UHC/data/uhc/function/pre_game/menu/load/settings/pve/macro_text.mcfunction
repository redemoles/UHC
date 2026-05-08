
#> uhc:pre_game/menu/load/settings/pve/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

$execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.2 with minecraft:golden_apple[minecraft:item_name=[{"text":"PvE","color":"#FF3F3F","italic":false},{"text":", nombre de ","color":"#FFFFFF","italic":false},{"text":"vies","color":"#FF3F3F","italic":false}],minecraft:lore=[[{"text":"Période de Résistance > ","color":"#FFFFFF","italic":false},$(pve),{"text":" minutes","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"settings_lives"}]
$item replace entity @s[scores={uhc.player.lang=061801,uhc.menu.settings.pve=1},tag=uhc.host] inventory.22 with minecraft:golden_apple[minecraft:item_name=[{"text":"PvE","color":"#FF3F3F","italic":false},{"text":", nombre de ","color":"#FFFFFF","italic":false},{"text":"vies","color":"#FF3F3F","italic":false}],minecraft:lore=[[{"text":"Période de Résistance > ","color":"#FFFFFF","italic":false},$(pve),{"text":" minutes","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"settings_lives"}]

$execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.2 with minecraft:golden_apple[minecraft:item_name=[{"text":"PvE","color":"#FF3F3F","italic":false},{"text":", number of ","color":"#FFFFFF","italic":false},{"text":"lives","color":"#FF3F3F","italic":false}],minecraft:lore=[[{"text":"Resistance period > ","color":"#FFFFFF","italic":false},$(pve),{"text":" minutes","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"settings_lives"}]
$item replace entity @s[scores={uhc.player.lang=051407,uhc.menu.settings.pve=1},tag=uhc.host] inventory.22 with minecraft:golden_apple[minecraft:item_name=[{"text":"PvE","color":"#FF3F3F","italic":false},{"text":", number of ","color":"#FFFFFF","italic":false},{"text":"lives","color":"#FF3F3F","italic":false}],minecraft:lore=[[{"text":"Resistance period > ","color":"#FFFFFF","italic":false},$(pve),{"text":" minutes","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"settings_lives"}]
