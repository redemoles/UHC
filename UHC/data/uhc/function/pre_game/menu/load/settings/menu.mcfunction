
#> uhc:pre_game/menu/load/settings/menu
#
# @within			uhc:pre_game/menu/selected/main/host/main
#
#
# @description		Menu
#

clear @s
tag @s[tag=uhc.host] remove uhc.menu.main.host
execute unless score @s uhc.menu.settings matches 1.. run scoreboard players set @s uhc.menu.settings 1
scoreboard players set @s[tag=!uhc.host] uhc.menu.main.player 0






function uhc:pre_game/menu/load/background/

execute if score @s[tag=uhc.host] uhc.menu.settings matches 3..4 run item replace entity @s inventory.20 with minecraft:purple_concrete[minecraft:item_name=[{"text":"-10","color":"#CF3F3F","italic":false}],minecraft:custom_data={Tags:"-10"}]
execute if score @s[tag=uhc.host] uhc.menu.settings matches 2..4 run item replace entity @s inventory.21 with minecraft:magenta_concrete[minecraft:item_name=[{"text":"-1","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"-1"}]
execute if score @s[tag=uhc.host] uhc.menu.settings matches 2..4 run item replace entity @s inventory.23 with minecraft:light_blue_concrete[minecraft:item_name=[{"text":"+1","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"+1"}]
execute if score @s[tag=uhc.host] uhc.menu.settings matches 3..4 run item replace entity @s inventory.24 with minecraft:cyan_concrete[minecraft:item_name=[{"text":"+10","color":"#3FCFCF","italic":false}],minecraft:custom_data={Tags:"+10"}]

execute if score @s[tag=uhc.host] uhc.menu.settings matches 5 run item replace entity @s inventory.20 with minecraft:purple_concrete_powder[minecraft:item_name=[{"text":"-50","color":"#CF3F3F","italic":false}],minecraft:custom_data={Tags:"-10"}]
execute if score @s[tag=uhc.host] uhc.menu.settings matches 5 run item replace entity @s inventory.21 with minecraft:magenta_concrete_powder[minecraft:item_name=[{"text":"-2","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"-1"}]
execute if score @s[tag=uhc.host] uhc.menu.settings matches 5 run item replace entity @s inventory.23 with minecraft:light_blue_concrete_powder[minecraft:item_name=[{"text":"+2","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"+1"}]
execute if score @s[tag=uhc.host] uhc.menu.settings matches 5 run item replace entity @s inventory.24 with minecraft:cyan_concrete_powder[minecraft:item_name=[{"text":"+50","color":"#3FCFCF","italic":false}],minecraft:custom_data={Tags:"+10"}]

execute if score @s[tag=uhc.host] uhc.menu.settings matches 6 run item replace entity @s inventory.21 with minecraft:magenta_concrete_powder[minecraft:item_name=[{"text":"/2","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"-1"}]
execute if score @s[tag=uhc.host] uhc.menu.settings matches 6 run item replace entity @s inventory.23 with minecraft:light_blue_concrete_powder[minecraft:item_name=[{"text":"*2","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"+1"}]

function uhc:translation/menu/load/close

# Menu Intérieur
execute if score @s uhc.menu.settings.border matches 11.. run return run function uhc:pre_game/menu/load/settings/border/menu
execute if score @s uhc.menu.settings.misc matches 11.. run return run function uhc:pre_game/menu/load/settings/misc/menu
execute if score @s uhc.menu.settings.pvp matches 11.. run return run function uhc:pre_game/menu/load/settings/pvp/menu

execute in uhc:lobby run function uhc:pre_game/menu/load/settings/macro_set

# Équipe
function uhc:translation/menu/load/settings/main_team
execute if score @s uhc.menu.settings.team matches 01.. run function uhc:pre_game/menu/load/settings/team/menu

# Vies
function uhc:translation/menu/load/settings/main_pve with storage uhc:settings menu
execute if score @s uhc.menu.settings.pve matches 01.. run function uhc:pre_game/menu/load/settings/pve/menu

# PvP
function uhc:translation/menu/load/settings/main_pvp with storage uhc:settings menu
execute if score @s uhc.menu.settings.pvp matches 01.. run function uhc:pre_game/menu/load/settings/pvp/menu

# Bordures
function uhc:translation/menu/load/settings/main_border with storage uhc:settings menu.shrink
execute if score @s uhc.menu.settings.border matches 01.. run function uhc:pre_game/menu/load/settings/border/menu

# Règles d'inventaire
function uhc:translation/menu/load/settings/main_inventory
execute if score @s uhc.menu.settings.inventory matches 01.. run function uhc:pre_game/menu/load/settings/inventory/menu

# Potion
function uhc:translation/menu/load/settings/main_potion
execute if score @s uhc.menu.settings.potion matches 01.. run function uhc:pre_game/menu/load/settings/potion/menu

# Divers
function uhc:translation/menu/load/settings/main_misc
execute if score @s uhc.menu.settings.misc matches 01.. run function uhc:pre_game/menu/load/settings/misc/menu
