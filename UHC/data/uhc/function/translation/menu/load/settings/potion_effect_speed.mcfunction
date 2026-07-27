
#> uhc:translation/menu/load/settings/potion_effect_speed
#
# @within			uhc:pre_game/menu/load/settings/misc/menu
#
#
# @description		Menu
#

## FRA - Français / French
execute if score #effect_speed uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.16 with minecraft:glass_bottle[minecraft:custom_name=[{"text":"Potion de vitesse interdite","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_potion_speed"}]
execute if score #effect_speed uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.16 with minecraft:potion[minecraft:custom_name=[{"text":"Potion de vitesse autorisée","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:3402751},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_potion_speed"}]

## ENG - English
execute if score #effect_speed uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.16 with minecraft:glass_bottle[minecraft:custom_name=[{"text":"Speed potion forbidden","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_potion_speed"}]
execute if score #effect_speed uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.16 with minecraft:potion[minecraft:custom_name=[{"text":"Speed potion allowed","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:3402751},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_potion_speed"}]
