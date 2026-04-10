
#> uhc:pre_game/menu/load/language/menu
#
# @within			uhc:pre_game/menu/selection/main/host/main
#
#
# @description		Menu
#

clear @s
tag @s[tag=uhc.host] remove uhc.menu.main.host
execute unless score @s uhc.menu.language matches 1.. run scoreboard players set @s uhc.menu.language 1
scoreboard players set @s uhc.menu.main.player 0
scoreboard players set @s uhc.menu.default_language 0





function uhc:pre_game/menu/load/background/

execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.1 with minecraft:player_head[minecraft:item_name=[{"text":"Français","color":"#3FE7FF","italic":false}],minecraft:profile={id:[I;-725263891,1925465020,-1485463140,-730824118],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjkwMzM0OWZhNDViZGQ4NzEyNmQ5Y2QzYzZjMGFiYmE3ZGJkNmY1NmZiOGQ3ODcwMTg3M2ExZTdjOGVlMzNjZiJ9fX0="}]},minecraft:custom_data={Tags:"lang_fra"}]
execute unless score @s uhc.player.lang matches 061801 run item replace entity @s inventory.1 with minecraft:player_head[minecraft:item_name=[{"text":"Français","color":"#FF3F3F","italic":false}],minecraft:profile={id:[I;-725263891,1925465020,-1485463140,-730824118],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjkwMzM0OWZhNDViZGQ4NzEyNmQ5Y2QzYzZjMGFiYmE3ZGJkNmY1NmZiOGQ3ODcwMTg3M2ExZTdjOGVlMzNjZiJ9fX0="}]},minecraft:custom_data={Tags:"lang_fra"}]

execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.2 with minecraft:player_head[minecraft:item_name=[{"text":"English","color":"#3FE7FF","italic":false}],minecraft:lore=[{"text":"Please report any translation issues.","color":"#CFCFCF","italic":true}],minecraft:profile={id:[I;-725263891,1925465020,-1485463140,-730824118],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmVlNWM4NTBhZmJiN2Q4ODQzMjY1YTE0NjIxMWFjOWM2MTVmNzMzZGNjNWE4ZTIxOTBlNWMyNDdkZWEzMiJ9fX0="}]},minecraft:custom_data={Tags:"lang_eng"}]
execute unless score @s uhc.player.lang matches 051407 run item replace entity @s inventory.2 with minecraft:player_head[minecraft:item_name=[{"text":"English","color":"#FF3F3F","italic":false}],minecraft:lore=[{"text":"Please report any translation issues.","color":"#CFCFCF","italic":true}],minecraft:profile={id:[I;-725263891,1925465020,-1485463140,-730824118],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmVlNWM4NTBhZmJiN2Q4ODQzMjY1YTE0NjIxMWFjOWM2MTVmNzMzZGNjNWE4ZTIxOTBlNWMyNDdkZWEzMiJ9fX0="}]},minecraft:custom_data={Tags:"lang_eng"}]

execute unless score #game_progress uhc.game_progress matches 1.. if score @s[tag=uhc.host] uhc.player.lang matches 061801 run item replace entity @s inventory.19 with minecraft:writable_book[minecraft:item_name=[{"text":"Changer la langue par défaut","color":"#FFE73F","italic":false}],minecraft:lore=[{"text":"Change the default language.","color":"#CFCFCF","italic":true}],minecraft:custom_data={Tags:"default"}]
execute unless score #game_progress uhc.game_progress matches 1.. if score @s[tag=uhc.host] uhc.player.lang matches 051407 run item replace entity @s inventory.19 with minecraft:writable_book[minecraft:item_name=[{"text":"Change the default language","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"default"}]

execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Fermer","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Close","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
