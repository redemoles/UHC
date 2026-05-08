
#> uhc:pre_game/menu/load/settings/potion/effect_slowness/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #effect_slowness uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.15 with minecraft:glass_bottle[minecraft:custom_name=[{"text":"Potion de lenteur interdite","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_potion_slowness"}]
execute if score #effect_slowness uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.15 with minecraft:potion[minecraft:custom_name=[{"text":"Potion de lenteur autorisée","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:9154528},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_potion_slowness"}]

execute if score #effect_slowness uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.15 with minecraft:glass_bottle[minecraft:custom_name=[{"text":"Slowness potion forbidden","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_potion_slowness"}]
execute if score #effect_slowness uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.15 with minecraft:potion[minecraft:custom_name=[{"text":"Slowness potion allowed","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:9154528},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_potion_slowness"}]
