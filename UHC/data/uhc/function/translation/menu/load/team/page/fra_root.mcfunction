
#> uhc:translation/menu/load/team/page/fra_root
#
# @within			uhc:pre_game/menu/load/main/player/team/chosen/main
#
#
# @description		Menu
#

item replace entity @s inventory.11 with minecraft:brush[minecraft:item_name=[{"text":"Couleurs","color":"#FFE73F","italic":false}],minecraft:lore=[[{"text":"• ","color":"#CFCFCF","italic":false},{"text":"▬","color":"dark_blue"},{"text":"▬","color":"blue"},{"text":"▬","color":"dark_aqua"},{"text":"▬","color":"aqua"},{"text":"▬","color":"dark_green"},{"text":"▬","color":"green"},{"text":"▬","color":"yellow"},{"text":"▬","color":"gold"}],[{"text":"• ","color":"#FFE73F","italic":false},{"text":"▬","color":"red"},{"text":"▬","color":"dark_red"},{"text":"▬","color":"dark_purple"},{"text":"▬","color":"light_purple"},{"text":"▬","color":"white"},{"text":"▬","color":"gray"},{"text":"▬","color":"dark_gray"},{"text":"▬","color":"black"}]],minecraft:custom_data={Tags:"colors"}]
item replace entity @s inventory.20 with minecraft:field_masoned_banner_pattern[minecraft:item_name=[{"text":"Symbole","color":"#FFE73F","italic":false}],minecraft:lore=[[{"text":"• ","color":"#FFE73F","italic":false},{"text":"Aucun","color":"#FFEF7F"}],[{"text":"• ","color":"#CFCFCF","italic":false},{"text":"♦","color":"#DFDFDF"}]],minecraft:custom_data={Tags:"symbol"}]

execute if score @s uhc.menu.main.player matches 1 run function uhc:translation/menu/load/team/page/fra_01_08
execute if score @s uhc.menu.main.player matches 2 run function uhc:translation/menu/load/team/page/fra_09_16
execute if score @s uhc.menu.main.player matches 3 run function uhc:translation/menu/load/team/page/fra_17_24
execute if score @s uhc.menu.main.player matches 4 run function uhc:translation/menu/load/team/page/fra_25_32
