
#> uhc:pre_game/menu/load/settings/pvp/absorption/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #absorption uhc.data.setup matches 0 run item replace entity @s[scores={uhc.menu.settings.pvp=1..10}] inventory.14 with minecraft:golden_apple[minecraft:item_name=[{"text":"Absorption > ","color":"#FFFFFF","italic":false},{"text":"❤❤","color":"#3F3F3F","italic":false}],minecraft:custom_data={Tags:"settings_absorption"}]
execute if score #absorption uhc.data.setup matches 1 run item replace entity @s[scores={uhc.menu.settings.pvp=1..10}] inventory.14 with minecraft:golden_apple[minecraft:item_name=[{"text":"Absorption > ","color":"#FFFFFF","italic":false},{"text":"❤","color":"#FFE73F","italic":false},{"text":"❤","color":"#3F3F3F","italic":false}],minecraft:custom_data={Tags:"settings_absorption"}]
execute if score #absorption uhc.data.setup matches 2 run item replace entity @s[scores={uhc.menu.settings.pvp=1..10}] inventory.14 with minecraft:golden_apple[minecraft:item_name=[{"text":"Absorption > ","color":"#FFFFFF","italic":false},{"text":"❤❤","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"settings_absorption"}]

execute if score #absorption uhc.data.setup matches 0 run item replace entity @s[scores={uhc.menu.settings.pvp=11..}] inventory.5 with minecraft:golden_apple[minecraft:item_name=[{"text":"Absorption > ","color":"#FFFFFF","italic":false},{"text":"❤❤","color":"#3F3F3F","italic":false}],minecraft:custom_data={Tags:"settings_absorption"}]
execute if score #absorption uhc.data.setup matches 1 run item replace entity @s[scores={uhc.menu.settings.pvp=11..}] inventory.5 with minecraft:golden_apple[minecraft:item_name=[{"text":"Absorption > ","color":"#FFFFFF","italic":false},{"text":"❤","color":"#FFE73F","italic":false},{"text":"❤","color":"#3F3F3F","italic":false}],minecraft:custom_data={Tags:"settings_absorption"}]
execute if score #absorption uhc.data.setup matches 2 run item replace entity @s[scores={uhc.menu.settings.pvp=11..}] inventory.5 with minecraft:golden_apple[minecraft:item_name=[{"text":"Absorption > ","color":"#FFFFFF","italic":false},{"text":"❤❤","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"settings_absorption"}]

execute if score #absorption uhc.data.setup matches 0 run item replace entity @s[scores={uhc.menu.settings.pvp=3},tag=uhc.host] inventory.22 with minecraft:golden_apple[minecraft:item_name=[{"text":"Absorption > ","color":"#FFFFFF","italic":false},{"text":"❤❤","color":"#3F3F3F","italic":false}],minecraft:custom_data={Tags:"settings_absorption"}]
execute if score #absorption uhc.data.setup matches 1 run item replace entity @s[scores={uhc.menu.settings.pvp=3},tag=uhc.host] inventory.22 with minecraft:golden_apple[minecraft:item_name=[{"text":"Absorption > ","color":"#FFFFFF","italic":false},{"text":"❤","color":"#FFE73F","italic":false},{"text":"❤","color":"#3F3F3F","italic":false}],minecraft:custom_data={Tags:"settings_absorption"}]
execute if score #absorption uhc.data.setup matches 2 run item replace entity @s[scores={uhc.menu.settings.pvp=3},tag=uhc.host] inventory.22 with minecraft:golden_apple[minecraft:item_name=[{"text":"Absorption > ","color":"#FFFFFF","italic":false},{"text":"❤❤","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"settings_absorption"}]

execute if score #absorption uhc.data.setup matches 0 run item replace entity @s[scores={uhc.menu.settings.pvp=51},tag=uhc.host] inventory.22 with minecraft:golden_apple[minecraft:item_name=[{"text":"Absorption > ","color":"#FFFFFF","italic":false},{"text":"❤❤","color":"#3F3F3F","italic":false}],minecraft:custom_data={Tags:"settings_absorption"}]
execute if score #absorption uhc.data.setup matches 1 run item replace entity @s[scores={uhc.menu.settings.pvp=51},tag=uhc.host] inventory.22 with minecraft:golden_apple[minecraft:item_name=[{"text":"Absorption > ","color":"#FFFFFF","italic":false},{"text":"❤","color":"#FFE73F","italic":false},{"text":"❤","color":"#3F3F3F","italic":false}],minecraft:custom_data={Tags:"settings_absorption"}]
execute if score #absorption uhc.data.setup matches 2 run item replace entity @s[scores={uhc.menu.settings.pvp=51},tag=uhc.host] inventory.22 with minecraft:golden_apple[minecraft:item_name=[{"text":"Absorption > ","color":"#FFFFFF","italic":false},{"text":"❤❤","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"settings_absorption"}]
