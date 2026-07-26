
#> uhc:pre_game/menu/load/settings/potion/effect_harming/macro_text
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

execute if score #effect_harming uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.11 with minecraft:glass_bottle[minecraft:custom_name=[{"text":"Potion de dégâts instantanée interdite","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_potion_harming"}]
execute if score #effect_harming uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.11 with minecraft:potion[minecraft:custom_name=[{"text":"Potion de dégâts instantanée autorisée","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:11101546},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_potion_harming"}]

execute if score #effect_harming uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.11 with minecraft:glass_bottle[minecraft:custom_name=[{"text":"Instant damage potion forbidden","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_potion_harming"}]
execute if score #effect_harming uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.11 with minecraft:potion[minecraft:custom_name=[{"text":"Instant damage potion allowed","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:11101546},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_potion_harming"}]
