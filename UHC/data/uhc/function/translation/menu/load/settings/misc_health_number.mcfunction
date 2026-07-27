
#> uhc:translation/menu/load/settings/misc_health_number
#
# @within			uhc:pre_game/menu/load/settings/misc/health_display
#
#
# @description		Menu
#

## FRA - Français / French
execute if score #hp_100 uhc.data.setup matches 0 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:book[minecraft:item_name=[{"text":"Points de vie","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"• ","color":"#3FE7FF","italic":false},{"text":"10 ❤ → 20 points de vie","color":"#FFE73F","italic":false}],[{"text":"• ","color":"#FF3F3F","italic":false},{"text":"10 ❤ → 100%","color":"#CFCFCF","italic":true}]],minecraft:custom_data={Tags:"settings_hp_number"}]
execute if score #hp_100 uhc.data.setup matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:book[minecraft:item_name=[{"text":"Points de vie","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"• ","color":"#FF3F3F","italic":false},{"text":"10 ❤ → 20 points de vie","color":"#CFCFCF","italic":true}],[{"text":"• ","color":"#3FE7FF","italic":false},{"text":"10 ❤ → 100%","color":"#FFE73F","italic":false}]],minecraft:custom_data={Tags:"settings_hp_number"}]

## ENG - English
execute if score #hp_100 uhc.data.setup matches 0 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:book[minecraft:item_name=[{"text":"Health points","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"• ","color":"#3FE7FF","italic":false},{"text":"10 ❤ → 20 health points","color":"#FFE73F","italic":false}],[{"text":"• ","color":"#FF3F3F","italic":false},{"text":"10 ❤ → 100%","color":"#CFCFCF","italic":true}]],minecraft:custom_data={Tags:"settings_hp_number"}]
execute if score #hp_100 uhc.data.setup matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:book[minecraft:item_name=[{"text":"Health points","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"• ","color":"#FF3F3F","italic":false},{"text":"10 ❤ → 20 health points","color":"#CFCFCF","italic":true}],[{"text":"• ","color":"#3FE7FF","italic":false},{"text":"10 ❤ → 100%","color":"#FFE73F","italic":false}]],minecraft:custom_data={Tags:"settings_hp_number"}]
