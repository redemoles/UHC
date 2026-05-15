
#> uhc:pre_game/menu/load/gamemode/main
#
# @within			uhc:pre_game/menu/selection/main/host/main
#
#
# @description		Menu
#

clear @s
tag @s remove uhc.menu.main.host
tag @s add uhc.menu.gamemode
scoreboard players set @s uhc.menu.gamemode.bhc 0
scoreboard players set @s uhc.menu.gamemode.mls 0
scoreboard players set @s uhc.menu.gamemode.mls.moles_per_game 0
scoreboard players set @s uhc.menu.gamemode.mls.moles_per_team 0
scoreboard players set @s uhc.menu.gamemode.mls.supermoles_per_team 0
scoreboard players set @s uhc.menu.gamemode.mls.teams_of_moles 0
scoreboard players set @s uhc.menu.gamemode.mls.teams_of_supermoles 0
function uhc:pre_game/menu/load/background/

item replace entity @s inventory.1 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Bingo","color":"#B73FFF","bold":false},{"text":" UHC","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"gamemode_bhc"}]
#item replace entity @s inventory.2 with minecraft:black_concrete[minecraft:item_name=[{"text":"Moles","color":"#E73F3F","italic":false}],minecraft:custom_data={Tags:"gamemode_mls"}]
#item replace entity @s inventory.3 with minecraft:black_concrete[minecraft:item_name=[{"text":"Nuzlocke","color":"#3F9FFF","bold":false},{"text":" UHC","color":"#FFE73F","italic":false}],minecraft:custom_data={Tags:"gamemode_nzl"}]
#item replace entity @s inventory.4 with minecraft:black_concrete[minecraft:item_name=[{"text":"Switch","color":"#6F3FFF","italic":false}],minecraft:custom_data={Tags:"gamemode_switch"}]

# Réglages
execute if score #nzl uhc.gamemode matches 1 if score #type_start nzl.data matches 0 run item replace entity @s inventory.19 with minecraft:black_candle[minecraft:item_name=[{"text":"Évolution au choix","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"gamemode_nzl_evolution"}]
execute if score #nzl uhc.gamemode matches 1 if score #type_start nzl.data matches 1 run item replace entity @s inventory.19 with minecraft:black_candle[minecraft:item_name=[{"text":"Random Évolution au Start","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"gamemode_nzl_evolution"}]

execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Fermer","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Close","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
