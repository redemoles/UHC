
#> uhc:translation/menu/load/settings/potion_milk_bucket
#
# @within			uhc:pre_game/menu/load/settings/misc/menu
#
#
# @description		Menu
#

## FRA - Français / French
execute if score #milk_bucket uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.21 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Seau de lait","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_potion_milk_bucket"}]
execute if score #milk_bucket uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.21 with minecraft:milk_bucket[minecraft:item_name=[{"text":"Seau de lait","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_potion_milk_bucket"}]

## ENG - English
execute if score #milk_bucket uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.21 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Milk bucket","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_potion_milk_bucket"}]
execute if score #milk_bucket uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.21 with minecraft:milk_bucket[minecraft:item_name=[{"text":"Milk bucket","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_potion_milk_bucket"}]
