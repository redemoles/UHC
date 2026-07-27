
#> uhc:translation/menu/load/settings/main_potion
#
# @within			uhc:pre_game/menu/load/settings/inventory/menu
#
#
#
#

## FRA - Français / French
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.6 with minecraft:potion[minecraft:custom_name=[{"text":"Effets et potions","color":"#3F6FFF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_potion"}]

## ENG - English
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.6 with minecraft:potion[minecraft:custom_name=[{"text":"Effects and potions","color":"#3F6FFF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:potion_contents"]},minecraft:custom_data={Tags:"settings_potion"}]
