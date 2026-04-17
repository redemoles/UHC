
#> uhc:pre_game/menu/load/settings/inventory/items_authorization/cobweb/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

$execute if score #cobweb uhc.data.setup matches 0 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Toile > ","color":"#FFFFFF","italic":false},$(cobweb_text),{"text":" par emplacement","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_cobweb"}]
$execute if score #cobweb uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=061801,uhc.menu.settings.inventory=32},tag=uhc.host] inventory.22 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Toile > ","color":"#FFFFFF","italic":false},$(cobweb_text),{"text":" par emplacement","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_cobweb"}]
$execute if score #cobweb uhc.data.setup matches 1.. if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:cobweb[minecraft:item_name=[{"text":"Toile > ","color":"#FFFFFF","italic":false},$(cobweb_text),{"text":" par emplacement","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_cobweb"}] $(cobweb_count)
$execute if score #cobweb uhc.data.setup matches 1.. run item replace entity @s[scores={uhc.player.lang=061801,uhc.menu.settings.inventory=32},tag=uhc.host] inventory.22 with minecraft:cobweb[minecraft:item_name=[{"text":"Toile > ","color":"#FFFFFF","italic":false},$(cobweb_text),{"text":" par emplacement","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_cobweb"}] $(cobweb_count)

$execute if score #cobweb uhc.data.setup matches 0 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Cobweb > ","color":"#FFFFFF","italic":false},$(cobweb_text),{"text":" per slot","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_cobweb"}]
$execute if score #cobweb uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=051407,uhc.menu.settings.inventory=32},tag=uhc.host] inventory.22 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Cobweb > ","color":"#FFFFFF","italic":false},$(cobweb_text),{"text":" per slot","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_cobweb"}]
$execute if score #cobweb uhc.data.setup matches 1.. if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:cobweb[minecraft:item_name=[{"text":"Cobweb > ","color":"#FFFFFF","italic":false},$(cobweb_text),{"text":" per slot","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_cobweb"}] $(cobweb_count)
$execute if score #cobweb uhc.data.setup matches 1.. run item replace entity @s[scores={uhc.player.lang=051407,uhc.menu.settings.inventory=32},tag=uhc.host] inventory.22 with minecraft:cobweb[minecraft:item_name=[{"text":"Cobweb > ","color":"#FFFFFF","italic":false},$(cobweb_text),{"text":" per slot","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_cobweb"}] $(cobweb_count)
