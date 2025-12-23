
#> uhc:pre_game/menu/load/gamemode/mls/teams_of_supermoles/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #mls uhc.gamemode matches 1 run scoreboard players set @s uhc.menu.gamemode.mls 2
$execute if score #mls uhc.gamemode matches 0 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.11 with minecraft:black_candle[minecraft:item_name=[{"text":"Équipes de supertaupes : ","color":"#FF3F3F","italic":false},$(interpreted_2)],minecraft:custom_data={Tags:"teams_of_supermoles"}]
$execute unless score #mls mls.scenario matches 0 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.11 with minecraft:light_gray_candle[minecraft:item_name=[{"text":"Équipes de supertaupes : ","color":"#3FE7FF","italic":false},$(interpreted_2)],minecraft:custom_data={Tags:"teams_of_supermoles"}]
$execute unless score #mls mls.scenario matches 0 if score @s uhc.menu.gamemode.mls.teams_of_supermoles matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.22 with minecraft:light_gray_candle[minecraft:item_name=[{"text":"Équipes de supertaupes : ","color":"#3FE7FF","italic":false},$(interpreted_2)],minecraft:custom_data={Tags:"teams_of_supermoles"}]

$execute if score #mls uhc.gamemode matches 0 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.11 with minecraft:black_candle[minecraft:item_name=[{"text":"Teams of supermoles: ","color":"#FF3F3F","italic":false},$(interpreted_2)],minecraft:custom_data={Tags:"teams_of_supermoles"}]
$execute unless score #mls mls.scenario matches 0 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.11 with minecraft:light_gray_candle[minecraft:item_name=[{"text":"Teams of supermoles: ","color":"#3FE7FF","italic":false},$(interpreted_2)],minecraft:custom_data={Tags:"teams_of_supermoles"}]
$execute unless score #mls mls.scenario matches 0 if score @s uhc.menu.gamemode.mls.teams_of_supermoles matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.22 with minecraft:light_gray_candle[minecraft:item_name=[{"text":"Teams of supermoles: ","color":"#3FE7FF","italic":false},$(interpreted_2)],minecraft:custom_data={Tags:"teams_of_supermoles"}]
