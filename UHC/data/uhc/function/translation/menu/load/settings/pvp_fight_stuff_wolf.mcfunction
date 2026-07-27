
#> uhc:translation/menu/load/settings/pvp_fight_stuff_wolf
#
# @within			uhc:pre_game/menu/load/settings/pvp/fight_stuff/menu
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 if score #wolf_limit uhc.data.setup matches 0 run item replace entity @s inventory.12 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Aucune limite de loups","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_pvp_wolf"}]
execute if score @s uhc.player.lang matches 061801 if score #wolf_limit uhc.data.setup matches 0 if score @s[tag=uhc.host] uhc.menu.settings.pvp matches 13 run item replace entity @s inventory.22 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Aucune limite de loups","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_pvp_wolf"}]
$execute if score @s uhc.player.lang matches 061801 if score #wolf_limit uhc.data.setup matches 1 run item replace entity @s inventory.12 with minecraft:wolf_spawn_egg[minecraft:item_name=[{"text":"Limite de loups > ","color":"#E7E7E7","italic":false},$(wolf_limit),{"text":" par personne","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_pvp_wolf"}]
$execute if score @s uhc.player.lang matches 061801 if score #wolf_limit uhc.data.setup matches 1 if score @s[tag=uhc.host] uhc.menu.settings.pvp matches 13 run item replace entity @s inventory.22 with minecraft:wolf_spawn_egg[minecraft:item_name=[{"text":"Limite de loups > ","color":"#E7E7E7","italic":false},$(wolf_limit),{"text":" par personne","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_pvp_wolf"}]

execute if score @s uhc.player.lang matches 061801 if score #wolf_armor uhc.data.setup matches 0 run item replace entity @s inventory.13 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Armure pour loup","color":"#FF3F3F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_pvp_wolf"}]
execute if score @s uhc.player.lang matches 061801 if score #wolf_armor uhc.data.setup matches 1 run item replace entity @s inventory.13 with minecraft:wolf_armor[minecraft:item_name=[{"text":"Armure pour loup","color":"#3FE7FF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_pvp_wolf"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 if score #wolf_limit uhc.data.setup matches 0 run item replace entity @s inventory.12 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"No limit of wolves","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_pvp_wolf"}]
execute if score @s uhc.player.lang matches 051407 if score #wolf_limit uhc.data.setup matches 0 if score @s[tag=uhc.host] uhc.menu.settings.pvp matches 13 run item replace entity @s inventory.22 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"No limit of wolves","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_pvp_wolf"}]
$execute if score @s uhc.player.lang matches 051407 if score #wolf_limit uhc.data.setup matches 1 run item replace entity @s inventory.12 with minecraft:wolf_spawn_egg[minecraft:item_name=[{"text":"Limit of wolves > ","color":"#E7E7E7","italic":false},$(wolf_limit),{"text":" per person","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_pvp_wolf"}]
$execute if score @s uhc.player.lang matches 051407 if score #wolf_limit uhc.data.setup matches 1 if score @s[tag=uhc.host] uhc.menu.settings.pvp matches 13 run item replace entity @s inventory.22 with minecraft:wolf_spawn_egg[minecraft:item_name=[{"text":"Limit of wolves > ","color":"#E7E7E7","italic":false},$(wolf_limit),{"text":" per person","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_pvp_wolf"}]

execute if score @s uhc.player.lang matches 051407 if score #wolf_armor uhc.data.setup matches 0 run item replace entity @s inventory.13 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Wolf armor","color":"#FF3F3F","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_pvp_wolf"}]
execute if score @s uhc.player.lang matches 051407 if score #wolf_armor uhc.data.setup matches 1 run item replace entity @s inventory.13 with minecraft:wolf_armor[minecraft:item_name=[{"text":"Wolf armor","color":"#3FE7FF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:attribute_modifiers"]},minecraft:custom_data={Tags:"settings_pvp_wolf"}]
