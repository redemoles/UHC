
#> uhc:pre_game/menu/load/settings/potion/effect_extended/macro_text
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

execute if score #effect_extended uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.23 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Potions rallongées","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_potion_extended"}]
execute if score #effect_extended uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.23 with minecraft:redstone[minecraft:item_name=[{"text":"Potions rallongées","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_potion_extended"}]

execute if score #effect_extended uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.23 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Extended potion","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_potion_extended"}]
execute if score #effect_extended uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.23 with minecraft:redstone[minecraft:item_name=[{"text":"Extended potion","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_potion_extended"}]
