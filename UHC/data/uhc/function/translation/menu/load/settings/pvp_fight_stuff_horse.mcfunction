
#> uhc:translation/menu/load/settings/pvp_fight_stuff_horse
#
# @within			uhc:pre_game/menu/load/settings/pvp/fight_stuff/menu
#
#
#
#

## FRA - Français / French
execute if score #horse_limit uhc.data.setup matches 0 if score @s uhc.player.lang matches 061801 if score @s uhc.menu.settings.pvp matches 11..20 run item replace entity @s inventory.11 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Chevaux","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_pvp_horse"}]
execute if score #horse_limit uhc.data.setup matches 1 if score @s uhc.player.lang matches 061801 if score @s uhc.menu.settings.pvp matches 11..20 run item replace entity @s inventory.11 with minecraft:saddle[minecraft:item_name=[{"text":"Chevaux","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_pvp_horse"}]

## ENG - English
execute if score #horse_limit uhc.data.setup matches 0 if score @s uhc.player.lang matches 051407 if score @s uhc.menu.settings.pvp matches 11..20 run item replace entity @s inventory.11 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Horses","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_pvp_horse"}]
execute if score #horse_limit uhc.data.setup matches 1 if score @s uhc.player.lang matches 051407 if score @s uhc.menu.settings.pvp matches 11..20 run item replace entity @s inventory.11 with minecraft:saddle[minecraft:item_name=[{"text":"Horses","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_pvp_horse"}]
