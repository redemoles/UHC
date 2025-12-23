
#> uhc:pre_game/menu/load/gamemode/mls/supermoles_per_team/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #mls uhc.gamemode matches 1 run scoreboard players set @s uhc.menu.gamemode.mls 2
$execute if score #mls uhc.gamemode matches 0 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.12 with minecraft:black_candle[minecraft:item_name=[{"text":"Supertaupes par équipe de taupes : ","color":"#FF3F3F","italic":false},$(interpreted_2)],minecraft:custom_data={Tags:"supermoles_per_team"}]
$execute unless score #mls mls.scenario matches 0 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.12 with minecraft:magenta_candle[minecraft:item_name=[{"text":"Supertaupes par équipe de taupes : ","color":"#3FE7FF","italic":false},$(interpreted_2)],minecraft:custom_data={Tags:"supermoles_per_team"}]
$execute unless score #mls mls.scenario matches 0 if score @s uhc.menu.gamemode.mls.supermoles_per_team matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.22 with minecraft:magenta_candle[minecraft:item_name=[{"text":"Supertaupes par équipe de taupes : ","color":"#3FE7FF","italic":false},$(interpreted_2)],minecraft:custom_data={Tags:"supermoles_per_team"}]

$execute if score #mls uhc.gamemode matches 0 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.12 with minecraft:black_candle[minecraft:item_name=[{"text":"Supermoles per team of moles: ","color":"#FF3F3F","italic":false},$(interpreted_2)],minecraft:custom_data={Tags:"supermoles_per_team"}]
$execute unless score #mls mls.scenario matches 0 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.12 with minecraft:magenta_candle[minecraft:item_name=[{"text":"Supermoles per team of moles: ","color":"#3FE7FF","italic":false},$(interpreted_2)],minecraft:custom_data={Tags:"supermoles_per_team"}]
$execute unless score #mls mls.scenario matches 0 if score @s uhc.menu.gamemode.mls.supermoles_per_team matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.22 with minecraft:magenta_candle[minecraft:item_name=[{"text":"Supermoles per team of moles: ","color":"#3FE7FF","italic":false},$(interpreted_2)],minecraft:custom_data={Tags:"supermoles_per_team"}]
