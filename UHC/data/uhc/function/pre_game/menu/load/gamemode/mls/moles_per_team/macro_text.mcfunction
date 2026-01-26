
#> uhc:pre_game/menu/load/gamemode/mls/moles_per_team/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #mls uhc.gamemode matches 1 run scoreboard players set @s uhc.menu.gamemode.mls 2
$execute unless score #mls mls.scenario matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.3 with minecraft:black_candle[minecraft:item_name=[{"text":"Taupes par équipe : ","color":"#FF3F3F","italic":false},$(moles_per_team)],minecraft:lore=[[{"text":"Mode ","color":"#FFFFFF","italic":false},{"text":"Normal","color":"#3FE7FF","italic":false},{"text":" seulement","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"moles_per_team"}]
$execute if score #mls mls.scenario matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.3 with minecraft:light_blue_candle[minecraft:item_name=[{"text":"Taupes par équipe : ","color":"#3FE7FF","italic":false},$(moles_per_team)],minecraft:lore=[[{"text":"Mode ","color":"#FFFFFF","italic":false},{"text":"Normal","color":"#3FE7FF","italic":false},{"text":" seulement","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"moles_per_team"}]
$execute if score #mls mls.scenario matches 1 if score @s uhc.menu.gamemode.mls.moles_per_team matches 1 if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.22 with minecraft:light_blue_candle[minecraft:item_name=[{"text":"Taupes par équipe : ","color":"#3FE7FF","italic":false},$(moles_per_team)],minecraft:lore=[[{"text":"Mode ","color":"#FFFFFF","italic":false},{"text":"Normal","color":"#3FE7FF","italic":false},{"text":" seulement","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"moles_per_team"}]

$execute unless score #mls mls.scenario matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.3 with minecraft:black_candle[minecraft:item_name=[{"text":"Moles per team: ","color":"#FF3F3F","italic":false},$(moles_per_team)],minecraft:lore=[[{"text":"Mode ","color":"#FFFFFF","italic":false},{"text":"Normal","color":"#3FE7FF","italic":false},{"text":" only","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"moles_per_team"}]
$execute if score #mls mls.scenario matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.3 with minecraft:light_blue_candle[minecraft:item_name=[{"text":"Moles per team: ","color":"#3FE7FF","italic":false},$(moles_per_team)],minecraft:lore=[[{"text":"Mode ","color":"#FFFFFF","italic":false},{"text":"Normal","color":"#3FE7FF","italic":false},{"text":" only","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"moles_per_team"}]
$execute if score #mls mls.scenario matches 1 if score @s uhc.menu.gamemode.mls.moles_per_team matches 1 if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.22 with minecraft:light_blue_candle[minecraft:item_name=[{"text":"Moles per team: ","color":"#3FE7FF","italic":false},$(moles_per_team)],minecraft:lore=[[{"text":"Mode ","color":"#FFFFFF","italic":false},{"text":"Normal","color":"#3FE7FF","italic":false},{"text":" only","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"moles_per_team"}]
