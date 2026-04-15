
#> uhc:pre_game/menu/load/lobby/main
#
# @within			uhc:pre_game/menu/selection/main/host/main
#
#
# @description		Menu
#

clear @s
tag @s remove uhc.menu.main.host
tag @s add uhc.menu.lobby







function uhc:pre_game/menu/load/background/

execute unless score #lobby lobby.structure.data matches 11 run item replace entity @s inventory.1 with minecraft:raw_gold_block[minecraft:item_name=[{"text":"BHC - Small biomes","color":"#FF3F3F","italic":false}],minecraft:lore=[[{"text":"Build by Poppiz_Ugo & Redemoles","color":"#E7E7E7","italic":true}]],minecraft:custom_data={"Tags":"lobby"}]
execute if score #lobby lobby.structure.data matches 11 run item replace entity @s inventory.1 with minecraft:raw_gold_block[minecraft:item_name=[{"text":"BHC - Small biomes","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"Build by Poppiz_Ugo & Redemoles","color":"#E7E7E7","italic":true}],[{"text":"Sélectionné","color":"#3FE7FF","italic":false}]],minecraft:custom_data={"Tags":"lobby_11"},minecraft:enchantment_glint_override=true]

execute unless score #lobby lobby.structure.data matches 12 run item replace entity @s inventory.2 with minecraft:stripped_spruce_wood[minecraft:item_name=[{"text":"BHC - Viking Era","color":"#FF3F3F","italic":false}],minecraft:lore=[[{"text":"Build by Fhara, Poppiz_Ugo & Redemoles","color":"#E7E7E7","italic":true}]],minecraft:custom_data={"Tags":"lobby"}]
execute if score #lobby lobby.structure.data matches 12 run item replace entity @s inventory.2 with minecraft:stripped_spruce_wood[minecraft:item_name=[{"text":"BHC - Viking Era","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"Build by Fhara, Poppiz_Ugo & Redemoles","color":"#E7E7E7","italic":true}],[{"text":"Sélectionné","color":"#3FE7FF","italic":false}]],minecraft:custom_data={"Tags":"lobby_12"},minecraft:enchantment_glint_override=true]

execute unless score #lobby lobby.structure.data matches 30 run item replace entity @s inventory.10 with minecraft:raw_copper_block[minecraft:item_name=[{"text":"BHC - April Fool 2026","color":"#FF3F3F","italic":false}],minecraft:lore=[[{"text":"Build by Fhara, Poppiz_Ugo & Redemoles","color":"#E7E7E7","italic":true}]],minecraft:custom_data={"Tags":"lobby"}]
execute if score #lobby lobby.structure.data matches 30 run item replace entity @s inventory.10 with minecraft:raw_copper_block[minecraft:item_name=[{"text":"BHC - April Fool 2026","color":"#3FE7FF","italic":false}],minecraft:lore=[[{"text":"Build by Fhara, Poppiz_Ugo & Redemoles","color":"#E7E7E7","italic":true}],[{"text":"Sélectionné","color":"#3FE7FF","italic":false}]],minecraft:custom_data={"Tags":"lobby_13"},minecraft:enchantment_glint_override=true]

execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Fermer","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Close","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
