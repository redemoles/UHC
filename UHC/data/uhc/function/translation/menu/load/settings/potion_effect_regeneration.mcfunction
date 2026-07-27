
#> uhc:translation/menu/load/settings/potion_effect_regeneration
#
# @within			uhc:pre_game/menu/load/settings/misc/menu
#
#
# @description		Menu
#

## FRA - Français / French
execute if score #effect_regeneration uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.14 with minecraft:glass_bottle[minecraft:custom_name=[{"text":"Potion de régéneration interdite","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_potion_regeneration"}]
execute if score #effect_regeneration uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.14 with minecraft:potion[minecraft:custom_name=[{"text":"Potion de régéneration autorisée","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:13458603},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_potion_regeneration"}]

## ENG - English
execute if score #effect_regeneration uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.14 with minecraft:glass_bottle[minecraft:custom_name=[{"text":"Regeneration potion forbidden","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_potion_regeneration"}]
execute if score #effect_regeneration uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.14 with minecraft:potion[minecraft:custom_name=[{"text":"Regeneration potion allowed","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:13458603},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_potion_regeneration"}]
