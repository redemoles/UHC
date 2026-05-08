
#> uhc:pre_game/menu/load/settings/potion/effect_level_2/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #effect_level_2 uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.22 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Potion de niveau 2","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_potion_level_2"}]
execute if score #effect_level_2 uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.22 with minecraft:glowstone_dust[minecraft:item_name=[{"text":"Potion de niveau 2","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_potion_level_2"}]

execute if score #effect_level_2 uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.22 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Potion of level 2","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_potion_level_2"}]
execute if score #effect_level_2 uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.22 with minecraft:glowstone_dust[minecraft:item_name=[{"text":"Potion of level 2","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_potion_level_2"}]
