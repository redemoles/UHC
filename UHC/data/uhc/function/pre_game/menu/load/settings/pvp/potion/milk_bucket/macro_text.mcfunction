
#> uhc:pre_game/menu/load/settings/pvp/potion/milk_bucket/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #milk_bucket uhc.data.setup matches 0 run item replace entity @s[scores={uhc.menu.settings.pvp=31..40,uhc.player.lang=061801}] inventory.10 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Seau de lait","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_pvp_milk_bucket"}]
execute if score #milk_bucket uhc.data.setup matches 1 run item replace entity @s[scores={uhc.menu.settings.pvp=31..40,uhc.player.lang=061801}] inventory.10 with minecraft:milk_bucket[minecraft:item_name=[{"text":"Seau de lait","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_pvp_milk_bucket"}]

execute if score #milk_bucket uhc.data.setup matches 0 run item replace entity @s[scores={uhc.menu.settings.pvp=31..40,uhc.player.lang=051407}] inventory.10 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Seau de lait","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_pvp_milk_bucket"}]
execute if score #milk_bucket uhc.data.setup matches 1 run item replace entity @s[scores={uhc.menu.settings.pvp=31..40,uhc.player.lang=051407}] inventory.10 with minecraft:milk_bucket[minecraft:item_name=[{"text":"Seau de lait","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_pvp_milk_bucket"}]
