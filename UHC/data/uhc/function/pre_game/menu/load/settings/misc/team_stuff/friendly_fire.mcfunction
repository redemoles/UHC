
#> uhc:pre_game/menu/load/settings/misc/team_stuff/friendly_fire
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #friendly_fire uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.10 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Tir amical","color":"#FF3F3F","italic":false}],minecraft:lore=[{"text":"Toujours activé avec Biome Paranoia","color":"#CFCFCF","italic":true}],minecraft:custom_data={Tags:"settings_misc_friendly_fire"}]
execute if score #friendly_fire uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=061801}] inventory.10 with minecraft:flint_and_steel[minecraft:item_name=[{"text":"Tir amical","color":"#3FE7FF","italic":false}],minecraft:lore=[{"text":"Toujours activé avec Biome Paranoia","color":"#CFCFCF","italic":true}],minecraft:custom_data={Tags:"settings_misc_friendly_fire"}]

execute if score #friendly_fire uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.10 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Friendly Fire","color":"#FF3F3F","italic":false}],minecraft:lore=[{"text":"Always activated with Biome Paranoia","color":"#CFCFCF","italic":true}],minecraft:custom_data={Tags:"settings_misc_friendly_fire"}]
execute if score #friendly_fire uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=051407}] inventory.10 with minecraft:flint_and_steel[minecraft:item_name=[{"text":"Friendly Fire","color":"#3FE7FF","italic":false}],minecraft:lore=[{"text":"Always activated with Biome Paranoia","color":"#CFCFCF","italic":true}],minecraft:custom_data={Tags:"settings_misc_friendly_fire"}]
