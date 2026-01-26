
#> uhc:pre_game/menu/load/gamemode/mls/teams_of_moles/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #mls uhc.gamemode matches 1 run scoreboard players set @s uhc.menu.gamemode.mls 2
$execute if score #mls uhc.gamemode matches 0 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.2 with minecraft:black_candle[minecraft:item_name=[{"text":"Équipes de taupes : ","color":"#FF3F3F","italic":false},$(teams_of_moles)],minecraft:custom_data={Tags:"teams_of_moles"}]
$execute unless score #mls mls.scenario matches 0 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.2 with minecraft:white_candle[minecraft:item_name=[{"text":"Équipes de taupes : ","color":"#3FE7FF","italic":false},$(teams_of_moles)],minecraft:custom_data={Tags:"teams_of_moles"}]
$execute unless score #mls mls.scenario matches 0 if score @s uhc.menu.gamemode.mls.teams_of_moles matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.22 with minecraft:white_candle[minecraft:item_name=[{"text":"Équipes de taupes : ","color":"#3FE7FF","italic":false},$(teams_of_moles)],minecraft:custom_data={Tags:"teams_of_moles"}]

$execute if score #mls uhc.gamemode matches 0 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.2 with minecraft:black_candle[minecraft:item_name=[{"text":"Teams of moles: ","color":"#FF3F3F","italic":false},$(teams_of_moles)],minecraft:custom_data={Tags:"teams_of_moles"}]
$execute unless score #mls mls.scenario matches 0 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.2 with minecraft:white_candle[minecraft:item_name=[{"text":"Teams of moles: ","color":"#3FE7FF","italic":false},$(teams_of_moles)],minecraft:custom_data={Tags:"teams_of_moles"}]
$execute unless score #mls mls.scenario matches 0 if score @s uhc.menu.gamemode.mls.teams_of_moles matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.22 with minecraft:white_candle[minecraft:item_name=[{"text":"Teams of moles: ","color":"#3FE7FF","italic":false},$(teams_of_moles)],minecraft:custom_data={Tags:"teams_of_moles"}]
