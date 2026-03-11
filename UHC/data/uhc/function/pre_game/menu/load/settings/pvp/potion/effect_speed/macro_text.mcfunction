
#> uhc:pre_game/menu/load/settings/pvp/potion/effect_speed/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #effect_speed uhc.data.setup matches 0 run item replace entity @s[scores={uhc.menu.settings.pvp=31..40,uhc.player.lang=061801}] inventory.12 with minecraft:potion[minecraft:custom_name=[{"text":"Effet vitesse interdit","color":"#FF3F3F","italic":false}],minecraft:potion_contents={custom_color:16727871},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_pvp_speed"}]
execute if score #effect_speed uhc.data.setup matches 1 run item replace entity @s[scores={uhc.menu.settings.pvp=31..40,uhc.player.lang=061801}] inventory.12 with minecraft:potion[minecraft:custom_name=[{"text":"Effet vitesse autorisé","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:3402751},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_pvp_speed"}]

execute if score #effect_speed uhc.data.setup matches 0 run item replace entity @s[scores={uhc.menu.settings.pvp=31..40,uhc.player.lang=051407}] inventory.12 with minecraft:potion[minecraft:custom_name=[{"text":"Speed effect forbidden","color":"#FF3F3F","italic":false}],minecraft:potion_contents={custom_color:16727871},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_pvp_speed"}]
execute if score #effect_speed uhc.data.setup matches 1 run item replace entity @s[scores={uhc.menu.settings.pvp=31..40,uhc.player.lang=051407}] inventory.12 with minecraft:potion[minecraft:custom_name=[{"text":"Speed effect allowed","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:3402751},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_pvp_speed"}]
