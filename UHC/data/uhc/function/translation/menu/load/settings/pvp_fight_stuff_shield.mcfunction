
#> uhc:translation/menu/load/settings/pvp_fight_stuff_shield
#
# @within			uhc:pre_game/menu/load/settings/pvp/fight_stuff/menu
#
#
#
#

## FRA - Français / French
$execute if score @s uhc.player.lang matches 061801 if score @s uhc.menu.settings.pvp matches 11..20 run item replace entity @s inventory.10 with minecraft:shield[minecraft:item_name=[{"text":"Durabilité des boucliers > ","color":"#CFCFCF","italic":false},$(shield_percent),{"text":"%","color":"#CFCFCF","italic":false}],damage=$(shield_durability),minecraft:custom_data={Tags:"settings_pvp_shield"}]
$execute if score @s uhc.player.lang matches 061801 if score @s uhc.menu.settings.pvp matches 12 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:shield[minecraft:item_name=[{"text":"Durabilité des boucliers > ","color":"#CFCFCF","italic":false},$(shield_percent),{"text":"%","color":"#CFCFCF","italic":false}],damage=$(shield_durability),minecraft:custom_data={Tags:"settings_pvp_shield"}]

## ENG - English
$execute if score @s uhc.player.lang matches 051407 if score @s uhc.menu.settings.pvp matches 11..20 run item replace entity @s inventory.10 with minecraft:shield[minecraft:item_name=[{"text":"Shields durability > ","color":"#CFCFCF","italic":false},$(shield_percent),{"text":"%","color":"#CFCFCF","italic":false}],damage=$(shield_durability),minecraft:custom_data={Tags:"settings_pvp_shield"}]
$execute if score @s uhc.player.lang matches 051407 if score @s uhc.menu.settings.pvp matches 12 run item replace entity @s[tag=uhc.host] inventory.22 with minecraft:shield[minecraft:item_name=[{"text":"Shields durability > ","color":"#CFCFCF","italic":false},$(shield_percent),{"text":"%","color":"#CFCFCF","italic":false}],damage=$(shield_durability),minecraft:custom_data={Tags:"settings_pvp_shield"}]
