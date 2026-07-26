
#> uhc:pre_game/menu/load/settings/pve/2_lives_left/macro_text
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

$execute if score #lives uhc.data.setup matches 3.. if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.14 with minecraft:yellow_candle[minecraft:item_name=[{"text":"Descente à 2 vies > ","color":"#FFFFFF","italic":false},$(2_lives_left),{"text":" minutes","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_live_2"}]
execute unless score #lives uhc.data.setup matches 3.. if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.14 with minecraft:black_candle[minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={Tags:"settings_live_2"}]
$item replace entity @s[scores={uhc.player.lang=061801,uhc.menu.settings.pve=3},tag=uhc.host] inventory.22 with minecraft:yellow_candle[minecraft:item_name=[{"text":"Descente à 2 vies > ","color":"#FFFFFF","italic":false},$(2_lives_left),{"text":" minutes","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_live_2"}]

$execute if score #lives uhc.data.setup matches 3.. if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.14 with minecraft:yellow_candle[minecraft:item_name=[{"text":"Drop to 2 lives > ","color":"#FFFFFF","italic":false},$(2_lives_left),{"text":" minutes","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_live_2"}]
execute unless score #lives uhc.data.setup matches 3.. if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.14 with minecraft:black_candle[minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={Tags:"settings_live_2"}]
$item replace entity @s[scores={uhc.player.lang=051407,uhc.menu.settings.pve=3},tag=uhc.host] inventory.22 with minecraft:yellow_candle[minecraft:item_name=[{"text":"Drop to 2 lives > ","color":"#FFFFFF","italic":false},$(2_lives_left),{"text":" minutes","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_live_2"}]
