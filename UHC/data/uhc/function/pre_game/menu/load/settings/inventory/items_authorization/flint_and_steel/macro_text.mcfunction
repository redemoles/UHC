
#> uhc:pre_game/menu/load/settings/inventory/items_authorization/flint_and_steel/macro_text
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

execute if score #flint_and_steel uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.11 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Briquet","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_flint_and_steel"}]
execute if score #flint_and_steel uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.11 with minecraft:flint_and_steel[minecraft:item_name=[{"text":"Briquet","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_flint_and_steel"}]

execute if score #flint_and_steel uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.11 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Flint and steel","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_flint_and_steel"}]
execute if score #flint_and_steel uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.11 with minecraft:flint_and_steel[minecraft:item_name=[{"text":"Flint and steel","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_flint_and_steel"}]
