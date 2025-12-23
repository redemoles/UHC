
#> uhc:pre_game/menu/load/settings/pvp/potion/compatibility/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #effect_compatibility_speed_strength uhc.data.setup matches 0 run item replace entity @s[scores={uhc.menu.settings.pvp=31..40,uhc.player.lang=061801}] inventory.11 with minecraft:red_concrete[minecraft:item_name=[{"text":"Effets force et vitesse incompatibles","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_pvp_compatibility"}]
execute if score #effect_compatibility_speed_strength uhc.data.setup matches 1 run item replace entity @s[scores={uhc.menu.settings.pvp=31..40,uhc.player.lang=061801}] inventory.11 with minecraft:potion[minecraft:custom_name=[{"text":"Effets force et vitesse compatibles","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:16762624},minecraft:tooltip_display={"hidden_components":["potion_contents"]},minecraft:custom_data={Tags:"settings_pvp_compatibility"}]

execute if score #effect_compatibility_speed_strength uhc.data.setup matches 0 run item replace entity @s[scores={uhc.menu.settings.pvp=31..40,uhc.player.lang=051407}] inventory.11 with minecraft:red_concrete[minecraft:item_name=[{"text":"Strength and speed effects incompatible","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_pvp_compatibility"}]
execute if score #effect_compatibility_speed_strength uhc.data.setup matches 1 run item replace entity @s[scores={uhc.menu.settings.pvp=31..40,uhc.player.lang=051407}] inventory.11 with minecraft:potion[minecraft:custom_name=[{"text":"Strength and speed effects compatible","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:16762624},minecraft:tooltip_display={"hidden_components":["potion_contents"]},minecraft:custom_data={Tags:"settings_pvp_compatibility"}]
