
#> uhc:translation/menu/load/settings/misc_health_name
#
# @within			uhc:pre_game/menu/load/settings/misc/health_display
#
#
# @description		Menu
#

## FRA - Français / French
execute if score #hp_name uhc.data.setup matches 0 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.12 with minecraft:name_tag[minecraft:item_name=[{"text":"Points de vie sous les pseudos","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"• ","color":"#FF3F3F","italic":false},{"text":"Désactivé","color":"#FF3F3F","italic":false}],[{"text":"• ","color":"#FF3F3F","italic":false},{"text":"Nombre","color":"#CFCFCF","italic":true}]],minecraft:custom_data={Tags:"settings_hp_name"}]
execute if score #hp_name uhc.data.setup matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.12 with minecraft:name_tag[minecraft:item_name=[{"text":"Points de vie sous les pseudos","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"• ","color":"#FF3F3F","italic":false},{"text":"Désactivé","color":"#CFCFCF","italic":true}],[{"text":"• ","color":"#3FE7FF","italic":false},{"text":"Nombre","color":"#FFE73F","italic":false}]],minecraft:custom_data={Tags:"settings_hp_name"}]

## ENG - English
execute if score #hp_name uhc.data.setup matches 0 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.12 with minecraft:name_tag[minecraft:item_name=[{"text":"Health points below the usernames","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"• ","color":"#FF3F3F","italic":false},{"text":"Disabled","color":"#FF3F3F","italic":false}],[{"text":"• ","color":"#FF3F3F","italic":false},{"text":"Number","color":"#CFCFCF","italic":true}]],minecraft:custom_data={Tags:"settings_hp_name"}]
execute if score #hp_name uhc.data.setup matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.12 with minecraft:name_tag[minecraft:item_name=[{"text":"Health points below the usernames","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"• ","color":"#FF3F3F","italic":false},{"text":"Disabled","color":"#CFCFCF","italic":true}],[{"text":"• ","color":"#3FE7FF","italic":false},{"text":"Number","color":"#FFE73F","italic":false}]],minecraft:custom_data={Tags:"settings_hp_name"}]
