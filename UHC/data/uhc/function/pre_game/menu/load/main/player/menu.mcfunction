
#> uhc:pre_game/menu/load/main/player/menu
#
# @within			uhc:pre_game/menu/selection/main/
# @within			uhc:pre_game/menu/selection/team/...
#
# @description		Menu
#

clear @s

scoreboard players set @s uhc.menu.language 0
execute unless score @s uhc.menu.main.player matches 1.. run scoreboard players set @s uhc.menu.main.player 1
scoreboard players set @s uhc.menu.settings 0
tag @s remove uhc.menu.main.host
tag @s remove uhc.menu.tp



execute if score #random_team uhc.data.setup matches 0 run function uhc:pre_game/menu/load/main/player/team/chosen/main
execute if score #random_team uhc.data.setup matches 1 if score #random_team_pots uhc.data.setup matches 1 run function uhc:pre_game/menu/load/main/player/team/random/1_pot
execute if score #random_team uhc.data.setup matches 1 if score #random_team_pots uhc.data.setup matches 2 run function uhc:pre_game/menu/load/main/player/team/random/2_pots
execute if score #random_team uhc.data.setup matches 1 if score #random_team_pots uhc.data.setup matches 3 run function uhc:pre_game/menu/load/main/player/team/random/3_pots

execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.1 with minecraft:player_head[minecraft:item_name=[{"text":"Langue","color":"#3FE7FF","italic":false}],minecraft:profile={id:[I;-725263891,1925465020,-1485463140,-730824118],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjkwMzM0OWZhNDViZGQ4NzEyNmQ5Y2QzYzZjMGFiYmE3ZGJkNmY1NmZiOGQ3ODcwMTg3M2ExZTdjOGVlMzNjZiJ9fX0="}]},minecraft:custom_data={Tags:"menu_language"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.1 with minecraft:player_head[minecraft:item_name=[{"text":"Language","color":"#3FE7FF","italic":false}],minecraft:profile={id:[I;-725263891,1925465020,-1485463140,-730824118],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmVlNWM4NTBhZmJiN2Q4ODQzMjY1YTE0NjIxMWFjOWM2MTVmNzMzZGNjNWE4ZTIxOTBlNWMyNDdkZWEzMiJ9fX0="}]},minecraft:custom_data={Tags:"menu_language"}]

execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.4 with minecraft:compass[minecraft:item_name=[{"text":"Téléportation","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"menu_teleportation"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.4 with minecraft:compass[minecraft:item_name=[{"text":"Teleportation","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"menu_teleportation"}]

item replace entity @s[tag=!uhc.night_vision,scores={uhc.player.lang=061801}] inventory.7 with minecraft:light[minecraft:item_name=[{"text":"Vision nocturne","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"night_vision"},minecraft:lore=[[{"text":"Clique pour activer","color":"#FFE73F","italic":false,"bold":false}],[{"text":"Désactivé pour certains modes de jeu","color":"#E7E7E7","italic":true,"bold":false}]],block_state={level:"0"}]
item replace entity @s[tag=uhc.night_vision,scores={uhc.player.lang=061801}] inventory.7 with minecraft:light[minecraft:item_name=[{"text":"Vision nocturne","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"night_vision"},minecraft:lore=[[{"text":"Clique pour désactiver","color":"#FFE73F","italic":false,"bold":false}],[{"text":"Désactivé pour certains modes de jeu","color":"#E7E7E7","italic":true,"bold":false}]],block_state={level:"15"}]

item replace entity @s[tag=!uhc.night_vision,scores={uhc.player.lang=051407}] inventory.7 with minecraft:light[minecraft:item_name=[{"text":"Night vision","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"night_vision"},minecraft:lore=[[{"text":"Click to activate","color":"#FFE73F","italic":false,"bold":false}],[{"text":"Disabled for some game modes","color":"#E7E7E7","italic":true,"bold":false}]],block_state={level:"0"}]
item replace entity @s[tag=uhc.night_vision,scores={uhc.player.lang=051407}] inventory.7 with minecraft:light[minecraft:item_name=[{"text":"Night vision","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"night_vision"},minecraft:lore=[[{"text":"Click to desactivate","color":"#FFE73F","italic":false,"bold":false}],[{"text":"Disabled for some game modes","color":"#E7E7E7","italic":true,"bold":false}]],block_state={level:"15"}]

execute if score @s uhc.player.lang matches 061801 run item replace entity @s[tag=uhc.host] inventory.25 with minecraft:command_block[minecraft:item_name=[{"text":"Configuration de la partie","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"menu_main_host"}]
execute if score @s uhc.player.lang matches 061801 run item replace entity @s[tag=!uhc.host] inventory.25 with minecraft:ender_eye[minecraft:item_name=[{"text":"Configuration de la partie","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"Vue observateur","color":"#CFCFCF","italic":true}]],minecraft:custom_data={Tags:"menu_main_host"}]

execute if score @s uhc.player.lang matches 051407 run item replace entity @s[tag=uhc.host] inventory.25 with minecraft:command_block[minecraft:item_name=[{"text":"Game settings","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"menu_main_host"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s[tag=!uhc.host] inventory.25 with minecraft:ender_eye[minecraft:item_name=[{"text":"Game settings","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"Observer view","color":"#CFCFCF","italic":true}]],minecraft:custom_data={Tags:"menu_main_host"}]
