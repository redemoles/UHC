
#> uhc:pre_game/menu/load/settings/misc/health_display/hp_chat
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #hp_chat uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.12 with minecraft:book[minecraft:item_name=[{"text":"Points de vie dans le chat","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"• ","color":"#3FE7FF","italic":false},{"text":"10 ❤ → 20 points de vie","color":"#FFE73F","italic":false}],[{"text":"• ","color":"#FF3F3F","italic":false},{"text":"10 ❤ → 100%","color":"#CFCFCF","italic":true}]],minecraft:custom_data={Tags:"settings_hp_chat"}]
execute if score #hp_chat uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.12 with minecraft:book[minecraft:item_name=[{"text":"Points de vie dans le chat","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"• ","color":"#FF3F3F","italic":false},{"text":"10 ❤ → 20 points de vie","color":"#CFCFCF","italic":true}],[{"text":"• ","color":"#3FE7FF","italic":false},{"text":"10 ❤ → 100%","color":"#FFE73F","italic":false}]],minecraft:custom_data={Tags:"settings_hp_chat"}]

execute if score #hp_chat uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.12 with minecraft:book[minecraft:item_name=[{"text":"Health points in chat","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"• ","color":"#3FE7FF","italic":false},{"text":"10 ❤ → 20 health points","color":"#FFE73F","italic":false}],[{"text":"• ","color":"#FF3F3F","italic":false},{"text":"10 ❤ → 100%","color":"#CFCFCF","italic":true}]],minecraft:custom_data={Tags:"settings_hp_chat"}]
execute if score #hp_chat uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.12 with minecraft:book[minecraft:item_name=[{"text":"Health points in chat","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"• ","color":"#FF3F3F","italic":false},{"text":"10 ❤ → 20 health points","color":"#CFCFCF","italic":true}],[{"text":"• ","color":"#3FE7FF","italic":false},{"text":"10 ❤ → 100%","color":"#FFE73F","italic":false}]],minecraft:custom_data={Tags:"settings_hp_chat"}]
