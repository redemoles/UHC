
#> uhc:pre_game/menu/load/gamemode/mls/moles_per_game/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#
 
execute if score #mls uhc.gamemode matches 1 run scoreboard players set @s uhc.menu.gamemode.mls 2
$execute unless score #mls mls.scenario matches 2 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.4 with minecraft:black_candle[minecraft:item_name=[{"text":"Taupes en jeu : ","color":"#FF3F3F","italic":false},$(interpreted_2)],minecraft:lore=[[{"text":"Mode ","color":"#FFFFFF","italic":false},{"text":"Apocalypse","color":"#FFE73F","italic":false},{"text":" seulement","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"moles_per_game"}]
$execute if score #mls mls.scenario matches 2 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.4 with minecraft:yellow_candle[minecraft:item_name=[{"text":"Taupes en jeu : ","color":"#3FE7FF","italic":false},$(interpreted_2)],minecraft:lore=[[{"text":"Mode ","color":"#FFFFFF","italic":false},{"text":"Apocalypse","color":"#FFE73F","italic":false},{"text":" seulement","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"moles_per_game"}]
$execute if score #mls mls.scenario matches 2 if score @s uhc.menu.gamemode.mls.moles_per_game matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.22 with minecraft:yellow_candle[minecraft:item_name=[{"text":"Taupes en jeu : ","color":"#3FE7FF","italic":false},$(interpreted_2)],minecraft:lore=[[{"text":"Mode ","color":"#FFFFFF","italic":false},{"text":"Apocalypse","color":"#FFE73F","italic":false},{"text":" seulement","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"moles_per_game"}]

$execute unless score #mls mls.scenario matches 2 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.4 with minecraft:black_candle[minecraft:item_name=[{"text":"Moles in game: ","color":"#FF3F3F","italic":false},$(interpreted_2)],minecraft:lore=[[{"text":"Mode ","color":"#FFFFFF","italic":false},{"text":"Apocalypse","color":"#FFE73F","italic":false},{"text":" only","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"moles_per_game"}]
$execute if score #mls mls.scenario matches 2 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.4 with minecraft:yellow_candle[minecraft:item_name=[{"text":"Moles in game: ","color":"#3FE7FF","italic":false},$(interpreted_2)],minecraft:lore=[[{"text":"Mode ","color":"#FFFFFF","italic":false},{"text":"Apocalypse","color":"#FFE73F","italic":false},{"text":" only","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"moles_per_game"}]
$execute if score #mls mls.scenario matches 2 if score @s uhc.menu.gamemode.mls.moles_per_game matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.22 with minecraft:yellow_candle[minecraft:item_name=[{"text":"Moles in game: ","color":"#3FE7FF","italic":false},$(interpreted_2)],minecraft:lore=[[{"text":"Mode ","color":"#FFFFFF","italic":false},{"text":"Apocalypse","color":"#FFE73F","italic":false},{"text":" only","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"moles_per_game"}]
