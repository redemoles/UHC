
#> uhc:pre_game/menu/load/settings/inventory/items_authorization/lava_bucket/macro_text
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

execute if score #lava_bucket uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.12 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Seau de lave","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_lava_bucket"}]
execute if score #lava_bucket uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.12 with minecraft:lava_bucket[minecraft:item_name=[{"text":"Seau de lave","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_lava_bucket"}]

execute if score #lava_bucket uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.12 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Lava bucket","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_lava_bucket"}]
execute if score #lava_bucket uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.12 with minecraft:lava_bucket[minecraft:item_name=[{"text":"Lava bucket","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_inventory_items_lava_bucket"}]
