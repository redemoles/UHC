
#> uhc:pre_game/menu/load/settings/pvp/potion/effect_strength/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #effect_strength uhc.data.setup matches 0 run item replace entity @s[scores={uhc.menu.settings.pvp=31..40,uhc.player.lang=061801}] inventory.13 with minecraft:potion[minecraft:custom_name=[{"text":"Effet force interdit","color":"#FF3F3F","italic":false}],minecraft:potion_contents={custom_color:16727871},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_pvp_strength"}]
execute if score #effect_strength uhc.data.setup matches 1 run item replace entity @s[scores={uhc.menu.settings.pvp=31..40,uhc.player.lang=061801}] inventory.13 with minecraft:potion[minecraft:custom_name=[{"text":"Effet force autorisé","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:16762624},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_pvp_strength"}]

execute if score #effect_strength uhc.data.setup matches 0 run item replace entity @s[scores={uhc.menu.settings.pvp=31..40,uhc.player.lang=051407}] inventory.13 with minecraft:potion[minecraft:custom_name=[{"text":"Strength effect forbidden","color":"#FF3F3F","italic":false}],minecraft:potion_contents={custom_color:16727871},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_pvp_strength"}]
execute if score #effect_strength uhc.data.setup matches 1 run item replace entity @s[scores={uhc.menu.settings.pvp=31..40,uhc.player.lang=051407}] inventory.13 with minecraft:potion[minecraft:custom_name=[{"text":"Strength effect allowed","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:16762624},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_pvp_strength"}]
