
#> uhc:translation/menu/load/language/default_lang
#
# @within			uhc:pre_game/menu/load/language/default_lang
#
#
#
#

## FRA - Français / French
execute if score #language uhc.player.lang matches 061801 run item replace entity @s inventory.1 with minecraft:player_head[minecraft:item_name=[{"text":"Français","color":"#3FE7FF","italic":false}],minecraft:lore=[{"text":"Définir comme langue par défaut.","color":"#FFFFFF","italic":false}],minecraft:profile={id:[I;-725263891,1925465020,-1485463140,-730824118],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjkwMzM0OWZhNDViZGQ4NzEyNmQ5Y2QzYzZjMGFiYmE3ZGJkNmY1NmZiOGQ3ODcwMTg3M2ExZTdjOGVlMzNjZiJ9fX0="}]},minecraft:custom_data={Tags:"lang_fra"}]
execute unless score #language uhc.player.lang matches 061801 run item replace entity @s inventory.1 with minecraft:player_head[minecraft:item_name=[{"text":"Français","color":"#FF3F3F","italic":false}],minecraft:lore=[{"text":"Définir comme langue par défaut.","color":"#FFFFFF","italic":false}],minecraft:profile={id:[I;-725263891,1925465020,-1485463140,-730824118],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjkwMzM0OWZhNDViZGQ4NzEyNmQ5Y2QzYzZjMGFiYmE3ZGJkNmY1NmZiOGQ3ODcwMTg3M2ExZTdjOGVlMzNjZiJ9fX0="}]},minecraft:custom_data={Tags:"lang_fra"}]
execute if score #language uhc.player.lang matches 1.. if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Annuler","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]

## ENG - English
execute if score #language uhc.player.lang matches 051407 run item replace entity @s inventory.2 with minecraft:player_head[minecraft:item_name=[{"text":"English","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"Set as default language.","color":"#FFFFFF","italic":false}],[{"text":"Please report any translation issues.","color":"#CFCFCF","italic":true}]],minecraft:profile={id:[I;-725263891,1925465020,-1485463140,-730824118],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmVlNWM4NTBhZmJiN2Q4ODQzMjY1YTE0NjIxMWFjOWM2MTVmNzMzZGNjNWE4ZTIxOTBlNWMyNDdkZWEzMiJ9fX0="}]},minecraft:custom_data={Tags:"lang_eng"}]
execute unless score #language uhc.player.lang matches 051407 run item replace entity @s inventory.2 with minecraft:player_head[minecraft:item_name=[{"text":"English","color":"#FF3F3F","italic":false}],minecraft:lore=[[{"text":"Set as default language.","color":"#FFFFFF","italic":false}],[{"text":"Please report any translation issues.","color":"#CFCFCF","italic":true}]],minecraft:profile={id:[I;-725263891,1925465020,-1485463140,-730824118],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmVlNWM4NTBhZmJiN2Q4ODQzMjY1YTE0NjIxMWFjOWM2MTVmNzMzZGNjNWE4ZTIxOTBlNWMyNDdkZWEzMiJ9fX0="}]},minecraft:custom_data={Tags:"lang_eng"}]
execute if score #language uhc.player.lang matches 1.. if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Cancel","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
