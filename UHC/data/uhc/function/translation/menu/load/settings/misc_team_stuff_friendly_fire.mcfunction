
#> uhc:translation/menu/load/settings/misc_team_stuff_friendly_fire
#
# @within			uhc:pre_game/menu/load/settings/misc/team_stuff
#
#
# @description		Menu
#

## FRA - Français / French
execute if score #friendly_fire uhc.data.setup matches 0 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Tir amical","color":"#FF3F3F","italic":false}],minecraft:lore=[{"text":"Toujours activé avec Biome Paranoia","color":"#CFCFCF","italic":true}],minecraft:custom_data={Tags:"settings_misc_friendly_fire"}]
execute if score #friendly_fire uhc.data.setup matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.10 with minecraft:flint_and_steel[minecraft:item_name=[{"text":"Tir amical","color":"#3FE7FF","italic":false}],minecraft:lore=[{"text":"Toujours activé avec Biome Paranoia","color":"#CFCFCF","italic":true}],minecraft:custom_data={Tags:"settings_misc_friendly_fire"}]

## ENG - English
execute if score #friendly_fire uhc.data.setup matches 0 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Friendly Fire","color":"#FF3F3F","italic":false}],minecraft:lore=[{"text":"Always activated with Biome Paranoia","color":"#CFCFCF","italic":true}],minecraft:custom_data={Tags:"settings_misc_friendly_fire"}]
execute if score #friendly_fire uhc.data.setup matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.10 with minecraft:flint_and_steel[minecraft:item_name=[{"text":"Friendly Fire","color":"#3FE7FF","italic":false}],minecraft:lore=[{"text":"Always activated with Biome Paranoia","color":"#CFCFCF","italic":true}],minecraft:custom_data={Tags:"settings_misc_friendly_fire"}]
