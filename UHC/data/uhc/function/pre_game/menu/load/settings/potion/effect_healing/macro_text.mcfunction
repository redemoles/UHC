
#> uhc:pre_game/menu/load/settings/potion/effect_healing/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #effect_healing uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.12 with minecraft:glass_bottle[minecraft:custom_name=[{"text":"Potion de soins instantanée interdite","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_potion_healing"}]
execute if score #effect_healing uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.12 with minecraft:potion[minecraft:custom_name=[{"text":"Potion de soins instantanée autorisée","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:16262179},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_potion_healing"}]

execute if score #effect_healing uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.12 with minecraft:glass_bottle[minecraft:custom_name=[{"text":"Instant Health potion forbidden","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_potion_healing"}]
execute if score #effect_healing uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.12 with minecraft:potion[minecraft:custom_name=[{"text":"Instant Health potion allowed","color":"#3FE7FF","italic":false}],minecraft:potion_contents={custom_color:16262179},minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_potion_healing"}]
