
#> uhc:pre_game/menu/load/settings/potion/compatibility/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #effect_compatibility_speed_strength uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.24 with minecraft:lingering_potion[minecraft:custom_name=[{"text":"Effets force et vitesse incompatibles","color":"#FF3F3F","italic":false}],minecraft:potion_contents={custom_color:16727871},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_potion_compatibility"}]
execute if score #effect_compatibility_speed_strength uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.24 with minecraft:lingering_potion[minecraft:custom_name=[{"text":"Effets force et vitesse compatibles","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:4188159},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_potion_compatibility"}]

execute if score #effect_compatibility_speed_strength uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.24 with minecraft:lingering_potion[minecraft:custom_name=[{"text":"Strength and speed effects incompatible","color":"#FF3F3F","italic":false}],minecraft:potion_contents={custom_color:16727871},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_potion_compatibility"}]
execute if score #effect_compatibility_speed_strength uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.24 with minecraft:lingering_potion[minecraft:custom_name=[{"text":"Strength and speed effects compatible","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:4188159},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_potion_compatibility"}]
