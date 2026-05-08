
#> uhc:pre_game/menu/load/settings/potion/effect_regeneration/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #effect_regeneration uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.14 with minecraft:glass_bottle[minecraft:custom_name=[{"text":"Potion de régéneration interdite","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_potion_regeneration"}]
execute if score #effect_regeneration uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.14 with minecraft:potion[minecraft:custom_name=[{"text":"Potion de régéneration autorisée","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:13458603},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_potion_regeneration"}]

execute if score #effect_regeneration uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.14 with minecraft:glass_bottle[minecraft:custom_name=[{"text":"Regeneration potion forbidden","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_potion_regeneration"}]
execute if score #effect_regeneration uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.14 with minecraft:potion[minecraft:custom_name=[{"text":"Regeneration potion allowed","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:13458603},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_potion_regeneration"}]
