
#> uhc:pre_game/menu/load/main/host/menu
#
# @within			uhc:pre_game/menu/selection/...
#
#
# @description		Menu
#

clear @s
tag @s add uhc.menu.main.host
scoreboard players set @s uhc.menu.main.player 0
scoreboard players set @s uhc.menu.language 0
tag @s remove uhc.menu.gamemode
scoreboard players set @s uhc.menu.gamemode.bhc 0
scoreboard players set @s uhc.menu.gamemode.mls 0
scoreboard players set @s uhc.menu.gamemode.mls.moles_per_game 0
scoreboard players set @s uhc.menu.gamemode.mls.moles_per_team 0
scoreboard players set @s uhc.menu.gamemode.mls.supermoles_per_team 0
scoreboard players set @s uhc.menu.gamemode.mls.teams_of_moles 0
scoreboard players set @s uhc.menu.gamemode.mls.teams_of_supermoles 0
tag @s remove uhc.menu.lobby
scoreboard players set @s uhc.menu.scenario.main 0
scoreboard players set @s uhc.menu.scenario.blood_diamond 0
tag @s remove uhc.menu.scenario.enchanting_setup
scoreboard players set @s uhc.menu.settings 0
scoreboard players set @s uhc.menu.settings.lives 0
scoreboard players set @s uhc.menu.settings.pve 0
scoreboard players set @s uhc.menu.settings.pvp 0
scoreboard players set @s uhc.menu.settings.border 0
scoreboard players set @s uhc.menu.settings.inventory 0
scoreboard players set @s uhc.menu.settings.misc 0
scoreboard players set @s uhc.menu.settings.team 0
tag @s remove uhc.menu.start
tag @s remove uhc.menu.tp
tag @s remove uhc.menu.world_check
tag @s remove uhc.menu.world_generation

function uhc:pre_game/menu/load/background/

execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.1 with minecraft:grass_block[minecraft:item_name=[{"text":"Génération du monde","color":"#3F9F3F","italic":false}],minecraft:custom_data={Tags:"menu_world_generation"}]
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.2 with minecraft:ender_eye[minecraft:item_name=[{"text":"Vérifications du monde","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"menu_world_check"}]
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.3 with minecraft:beacon[minecraft:item_name=[{"text":"Lobby","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"menu_lobby"}]
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.5 with minecraft:command_block[minecraft:item_name=[{"text":"Mode de jeu","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"menu_gamemodes"}]
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.6 with minecraft:repeating_command_block[minecraft:item_name=[{"text":"Scénarios","color":"#CF3FFF","italic":false}],minecraft:custom_data={Tags:"menu_scenario"}]
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.7 with minecraft:chain_command_block[minecraft:item_name=[{"text":"Paramètres","color":"#CFCFCF","italic":false}],minecraft:custom_data={Tags:"menu_settings"}]
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:player_head[minecraft:item_name=[{"text":"Langage","color":"#3FE7FF","italic":false}],minecraft:profile={id:[I;-725263891,1925465020,-1485463140,-730824118],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjkwMzM0OWZhNDViZGQ4NzEyNmQ5Y2QzYzZjMGFiYmE3ZGJkNmY1NmZiOGQ3ODcwMTg3M2ExZTdjOGVlMzNjZiJ9fX0="}]},minecraft:custom_data={Tags:"menu_language"}]
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.22 with minecraft:nether_star[minecraft:item_name=[{"text":"Démarrage","color":"#FFE73F","italic":false,"bold":true}],minecraft:custom_data={Tags:"menu_start"}]
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.24 with minecraft:book[minecraft:item_name=[{"text":"Résumé configuration","color":"#3FE7FF","italic":false}],minecraft:lore=[{"text":"Menu Paramètres exclu","color":"#CFCFCF"}],minecraft:custom_data={Tags:"rules_summary"}]
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.25 with minecraft:white_banner[minecraft:item_name=[{"text":"Menu joueur","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"menu_player"}]

execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.1 with minecraft:grass_block[minecraft:item_name=[{"text":"World generation","color":"#3F9F3F","italic":false}],minecraft:custom_data={Tags:"menu_world_generation"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.2 with minecraft:ender_eye[minecraft:item_name=[{"text":"World check","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"menu_world_check"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.3 with minecraft:beacon[minecraft:item_name=[{"text":"Lobby","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"menu_lobby"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.5 with minecraft:command_block[minecraft:item_name=[{"text":"Game modes","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"menu_gamemodes"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.6 with minecraft:repeating_command_block[minecraft:item_name=[{"text":"Scenarios","color":"#CF3FFF","italic":false}],minecraft:custom_data={Tags:"menu_scenario"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.7 with minecraft:chain_command_block[minecraft:item_name=[{"text":"Settings","color":"#CFCFCF","italic":false}],minecraft:custom_data={Tags:"menu_settings"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:player_head[minecraft:item_name=[{"text":"Language","color":"#3FE7FF","italic":false}],minecraft:profile={id:[I;-725263891,1925465020,-1485463140,-730824118],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmVlNWM4NTBhZmJiN2Q4ODQzMjY1YTE0NjIxMWFjOWM2MTVmNzMzZGNjNWE4ZTIxOTBlNWMyNDdkZWEzMiJ9fX0="}]},minecraft:custom_data={Tags:"menu_language"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.22 with minecraft:nether_star[minecraft:item_name=[{"text":"Start","color":"#FFE73F","italic":false,"bold":true}],minecraft:custom_data={Tags:"menu_start"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.24 with minecraft:book[minecraft:item_name=[{"text":"Settings configuration","color":"#3FE7FF","italic":false}],minecraft:lore=[{"text":"Settings menu excluded","color":"#CFCFCF"}],minecraft:custom_data={Tags:"rules_summary"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.25 with minecraft:white_banner[minecraft:item_name=[{"text":"Player menu","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"menu_player"}]

