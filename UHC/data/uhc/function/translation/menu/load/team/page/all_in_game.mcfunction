
#> uhc:translation/menu/load/team/page/all_in_game
#
# @within			uhc:pre_game/menu/load/main/player/menu
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.1 with minecraft:player_head[minecraft:item_name=[{"text":"Langue","color":"#3FE7FF","italic":false}],minecraft:profile={id:[I;-725263891,1925465020,-1485463140,-730824118],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjkwMzM0OWZhNDViZGQ4NzEyNmQ5Y2QzYzZjMGFiYmE3ZGJkNmY1NmZiOGQ3ODcwMTg3M2ExZTdjOGVlMzNjZiJ9fX0="}]},minecraft:custom_data={Tags:"menu_language"}]
execute if score @s[tag=!uhc.night_vision] uhc.player.lang matches 061801 run item replace entity @s inventory.7 with minecraft:light[minecraft:item_name=[{"text":"Vision nocturne","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"night_vision"},minecraft:lore=[[{"text":"Clique pour activer","color":"#FFFFFF","italic":false,"bold":false}],[{"text":"Désactivé pour certains modes de jeu","color":"#E7E7E7","italic":true,"bold":false}]],block_state={level:"0"}]
execute if score @s[tag=uhc.night_vision] uhc.player.lang matches 061801 run item replace entity @s inventory.7 with minecraft:light[minecraft:item_name=[{"text":"Vision nocturne","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"night_vision"},minecraft:lore=[[{"text":"Clique pour désactiver","color":"#FFFFFF","italic":false,"bold":false}],[{"text":"Désactivé pour certains modes de jeu","color":"#E7E7E7","italic":true,"bold":false}]],block_state={level:"15"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.1 with minecraft:player_head[minecraft:item_name=[{"text":"Language","color":"#3FE7FF","italic":false}],minecraft:profile={id:[I;-725263891,1925465020,-1485463140,-730824118],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmVlNWM4NTBhZmJiN2Q4ODQzMjY1YTE0NjIxMWFjOWM2MTVmNzMzZGNjNWE4ZTIxOTBlNWMyNDdkZWEzMiJ9fX0="}]},minecraft:custom_data={Tags:"menu_language"}]
execute if score @s[tag=!uhc.night_vision] uhc.player.lang matches 051407 run item replace entity @s inventory.7 with minecraft:light[minecraft:item_name=[{"text":"Night vision","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"night_vision"},minecraft:lore=[[{"text":"Click to activate","color":"#FFFFFF","italic":false,"bold":false}],[{"text":"Disabled for some game modes","color":"#E7E7E7","italic":true,"bold":false}]],block_state={level:"0"}]
execute if score @s[tag=uhc.night_vision] uhc.player.lang matches 051407 run item replace entity @s inventory.7 with minecraft:light[minecraft:item_name=[{"text":"Night vision","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"night_vision"},minecraft:lore=[[{"text":"Click to desactivate","color":"#FFFFFF","italic":false,"bold":false}],[{"text":"Disabled for some game modes","color":"#E7E7E7","italic":true,"bold":false}]],block_state={level:"15"}]
