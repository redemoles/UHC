
#> uhc:translation/menu/load/world_check
#
# @within			uhc:pre_game/menu/load/world_check/
#
#
#
#

## FRA - Français / French
execute if score @s[tag=!host.check_biomes] uhc.player.lang matches 061801 run item replace entity @s inventory.1 with minecraft:moss_block[minecraft:item_name=[{"text":"Vérification des biomes","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"check_biomes"}]
execute if score @s[tag=host.check_biomes] uhc.player.lang matches 061801 run item replace entity @s inventory.1 with minecraft:moss_block[minecraft:item_name=[{"text":"Vérification des biomes","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"check_biomes"},minecraft:enchantment_glint_override=true]

execute if score @s[tag=!host.check_spawns] uhc.player.lang matches 061801 run item replace entity @s inventory.2 with minecraft:ender_pearl[minecraft:item_name=[{"text":"Vérification des points d'apparition","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"check_spawns"}]
execute if score @s[tag=host.check_spawns] uhc.player.lang matches 061801 run item replace entity @s inventory.2 with minecraft:ender_pearl[minecraft:item_name=[{"text":"Vérification des points d'apparition","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"check_spawns"},minecraft:enchantment_glint_override=true]

## ENG - English
execute if score @s[tag=!host.check_biomes] uhc.player.lang matches 051407 run item replace entity @s inventory.1 with minecraft:moss_block[minecraft:item_name=[{"text":"Biomes check","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"check_biomes"}]
execute if score @s[tag=host.check_biomes] uhc.player.lang matches 051407 run item replace entity @s inventory.1 with minecraft:moss_block[minecraft:item_name=[{"text":"Biomes check","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"check_biomes"},minecraft:enchantment_glint_override=true]

execute if score @s[tag=!host.check_spawns] uhc.player.lang matches 051407 run item replace entity @s inventory.2 with minecraft:ender_pearl[minecraft:item_name=[{"text":"Spawn points check","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"check_spawns"}]
execute if score @s[tag=host.check_spawns] uhc.player.lang matches 051407 run item replace entity @s inventory.2 with minecraft:ender_pearl[minecraft:item_name=[{"text":"Spawn points check","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"check_spawns"},minecraft:enchantment_glint_override=true]

