
#> uhc:pre_game/menu/load/settings/pvp/fight_stuff/horse/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #horse_limit uhc.data.setup matches 0 run item replace entity @s[scores={uhc.menu.settings.pvp=11..20,uhc.player.lang=061801}] inventory.11 with minecraft:red_concrete[minecraft:item_name=[{"text":"Chevaux","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_pvp_horse"}]
execute if score #horse_limit uhc.data.setup matches 1 run item replace entity @s[scores={uhc.menu.settings.pvp=11..20,uhc.player.lang=061801}] inventory.11 with minecraft:saddle[minecraft:item_name=[{"text":"Chevaux","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_pvp_horse"}]

execute if score #horse_limit uhc.data.setup matches 0 run item replace entity @s[scores={uhc.menu.settings.pvp=11..20,uhc.player.lang=051407}] inventory.11 with minecraft:red_concrete[minecraft:item_name=[{"text":"Horses","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_pvp_horse"}]
execute if score #horse_limit uhc.data.setup matches 1 run item replace entity @s[scores={uhc.menu.settings.pvp=11..20,uhc.player.lang=051407}] inventory.11 with minecraft:saddle[minecraft:item_name=[{"text":"Horses","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_pvp_horse"}]
