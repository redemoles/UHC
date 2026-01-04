
#> uhc:pre_game/menu/load/scenario/menu_2_2eng
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

clear @s
tag @s remove uhc.menu.main.host
scoreboard players set @s uhc.menu.scenario.main 2







function uhc:pre_game/menu/load/background/

execute if score #rewarding_longshots uhc.scenario matches 0 run item replace entity @s inventory.1 with minecraft:red_concrete[minecraft:item_name=[{"text":"Rewarding Longshots","color":"#FF3F3F","italic":false}],minecraft:lore=[[{"text":"Hitting players with an arrow will be rewarded with various items.","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"scenario"}]
execute if score #rewarding_longshots uhc.scenario matches 1 run item replace entity @s inventory.1 with minecraft:arrow[minecraft:item_name=[{"text":"Rewarding Longshots","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"Hitting players with an arrow will be rewarded with various items.","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"scenario"}]
execute if score #sky_high uhc.scenario matches 0 run item replace entity @s inventory.2 with minecraft:red_concrete[minecraft:item_name=[{"text":"Sky High","color":"#FF3F3F","italic":false}],minecraft:lore=[[{"text":"When PvP is enabled, players below Y=150 will receive","color":"#FFFFFF","italic":false}],[{"text":"progressive damage every 30 seconds.","color":"#FFFFFF","italic":false}],[{"text":"Incompatible with ","color":"#FF7F7F","italic":false},{"text":"Go To Hell","color":"#FF3F3F","italic":false}]],minecraft:custom_data={Tags:"scenario"}]
execute if score #sky_high uhc.scenario matches 1 run item replace entity @s inventory.2 with minecraft:phantom_membrane[minecraft:item_name=[{"text":"Sky High","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"When PvP is enabled, players below Y=150 will receive","color":"#FFFFFF","italic":false}],[{"text":"progressive damage every 30 seconds.","color":"#FFFFFF","italic":false}],[{"text":"Incompatible with ","color":"#FF7F7F","italic":false},{"text":"Go To Hell","color":"#FF3F3F","italic":false}]],minecraft:custom_data={Tags:"scenario"}]
execute if score #sound_paranoia uhc.scenario matches 0 run item replace entity @s inventory.3 with minecraft:red_concrete[minecraft:item_name=[{"text":"Sound Paranoia","color":"#FF3F3F","italic":false}],minecraft:lore=[[{"text":"Each player will hear a fake sound every 1m30 to 7m30.","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"scenario"}]
execute if score #sound_paranoia uhc.scenario matches 1 run item replace entity @s inventory.3 with minecraft:note_block[minecraft:item_name=[{"text":"Sound Paranoia","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"Each player will hear a fake sound every 1m30 to 7m30.","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"scenario"}]
execute if score #team_health uhc.scenario matches 0 run item replace entity @s inventory.4 with minecraft:red_concrete[minecraft:item_name=[{"text":"Team Health","color":"#FF3F3F","italic":false}],minecraft:lore=[[{"text":"The health points shown correspond to","color":"#FFFFFF","italic":false}],[{"text":"combined health of all players of the team.","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"scenario"}]
execute if score #team_health uhc.scenario matches 1 run item replace entity @s inventory.4 with minecraft:apple[minecraft:item_name=[{"text":"Team Health","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"The health points shown correspond to","color":"#FFFFFF","italic":false}],[{"text":"combined health of all players of the team.","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"scenario"}]
execute if score #trade_uhc uhc.scenario matches 0 run item replace entity @s inventory.5 with minecraft:red_concrete[minecraft:item_name=[{"text":"Trade UHC","color":"#FF3F3F","italic":false}],minecraft:lore=[[{"text":"All minerals, except gold and coal, give emerald.","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"scenario"}]
execute if score #trade_uhc uhc.scenario matches 1 run item replace entity @s inventory.5 with minecraft:emerald[minecraft:item_name=[{"text":"Trade UHC","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"All minerals, except gold and coal, give emerald.","color":"#FFFFFF","italic":false}]],minecraft:custom_data={Tags:"scenario"}]

item replace entity @s inventory.24 with minecraft:arrow[minecraft:item_name=[{"text":"Page 1","color":"#3FE7FF","italic":false}]]
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Fermer","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Close","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
