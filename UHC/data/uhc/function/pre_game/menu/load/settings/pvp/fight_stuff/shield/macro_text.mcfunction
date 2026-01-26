
#> uhc:pre_game/menu/load/settings/pvp/fight_stuff/shield/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

$item replace entity @s[scores={uhc.player.lang=061801,uhc.menu.settings.pvp=11..20}] inventory.10 with minecraft:shield[minecraft:item_name=[{"text":"Durabilité des boucliers > ","color":"#CFCFCF","italic":false},$(shield_percent),{"text":"%","color":"#CFCFCF","italic":false}],damage=$(shield_durability),minecraft:custom_data={Tags:"settings_pvp_shield"}]
$item replace entity @s[scores={uhc.player.lang=061801,uhc.menu.settings.pvp=12},tag=uhc.host] inventory.22 with minecraft:shield[minecraft:item_name=[{"text":"Durabilité des boucliers > ","color":"#CFCFCF","italic":false},$(shield_percent),{"text":"%","color":"#CFCFCF","italic":false}],damage=$(shield_durability),minecraft:custom_data={Tags:"settings_pvp_shield"}]

$item replace entity @s[scores={uhc.player.lang=051407,uhc.menu.settings.pvp=11..20}] inventory.10 with minecraft:shield[minecraft:item_name=[{"text":"Shields durability > ","color":"#CFCFCF","italic":false},$(shield_percent),{"text":"%","color":"#CFCFCF","italic":false}],damage=$(shield_durability),minecraft:custom_data={Tags:"settings_pvp_shield"}]
$item replace entity @s[scores={uhc.player.lang=051407,uhc.menu.settings.pvp=12},tag=uhc.host] inventory.22 with minecraft:shield[minecraft:item_name=[{"text":"Shields durability > ","color":"#CFCFCF","italic":false},$(shield_percent),{"text":"%","color":"#CFCFCF","italic":false}],damage=$(shield_durability),minecraft:custom_data={Tags:"settings_pvp_shield"}]
