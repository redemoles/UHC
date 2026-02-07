
#> uhc:pre_game/menu/load/settings/
#
# @within			uhc:pre_game/menu/selection/main/host
#
#
# @description		Menu
#

clear @s
tag @s[tag=uhc.host] remove uhc.menu.main.host
execute unless score @s uhc.menu.settings matches 1.. run scoreboard players set @s uhc.menu.settings 1
scoreboard players set @s[tag=!uhc.host] uhc.menu.main.player 0






function uhc:pre_game/menu/load/background/

execute if entity @s[tag=!uhc.host] run function uhc:pre_game/menu/load/settings/player_menu/gamemode/macro_text with storage uhc:settings
execute if entity @s[tag=!uhc.host] unless score #mystery_scenarios uhc.data.setup matches 1 run function uhc:pre_game/menu/load/settings/player_menu/scenario/macro_text

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

execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Fermer","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.25 with minecraft:barrier[minecraft:item_name=[{"text":"Close","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"close"}]

# Menu PvP
execute if score @s uhc.menu.settings.pvp matches 11.. run return run function uhc:pre_game/menu/load/settings/pvp/menu
execute if score @s uhc.menu.settings.border matches 11.. run return run function uhc:pre_game/menu/load/settings/border/menu

# Vies
execute in uhc:lobby run function uhc:pre_game/menu/load/settings/lives/macro_set
function uhc:pre_game/menu/load/settings/lives/macro_text with storage uhc:settings menu
execute if score @s uhc.menu.settings.lives matches 01.. run function uhc:pre_game/menu/load/settings/lives/menu

# PvE
execute in uhc:lobby run function uhc:pre_game/menu/load/settings/pve/macro_set
function uhc:pre_game/menu/load/settings/pve/macro_text with storage uhc:settings menu
execute if score @s uhc.menu.settings.pve matches 01.. run function uhc:pre_game/menu/load/settings/pve/menu

# PvP
execute in uhc:lobby run function uhc:pre_game/menu/load/settings/pvp/macro_set
function uhc:pre_game/menu/load/settings/pvp/macro_text with storage uhc:settings menu
execute if score @s uhc.menu.settings.pvp matches 01.. run function uhc:pre_game/menu/load/settings/pvp/menu

# Bordure
execute in uhc:lobby run function uhc:pre_game/menu/load/settings/border/macro_set
function uhc:pre_game/menu/load/settings/border/macro_text with storage uhc:settings menu.shrink
execute if score @s uhc.menu.settings.border matches 01.. run function uhc:pre_game/menu/load/settings/border/menu

# Règles d'inventaire
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.5 with minecraft:chest[minecraft:item_name=[{"text":"Inventaire","color":"#FFE73F","italic":false}],minecraft:lore=[{"text":"Règles de stuff, items au démarrage et récompenses","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.5 with minecraft:chest[minecraft:item_name=[{"text":"Inventory","color":"#FFE73F","italic":false}],minecraft:lore=[{"text":"Items rules, starter and rewards items","color":"#FFFFFF","italic":false}],minecraft:custom_data={Tags:"settings_inventory"}]
execute if score @s uhc.menu.settings.inventory matches 01.. run function uhc:pre_game/menu/load/settings/inventory/menu

# Équipe
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.6 with minecraft:white_banner[minecraft:item_name=[{"text":"Paramètres d'équipe","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_team"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.6 with minecraft:white_banner[minecraft:item_name=[{"text":"Team settings","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_team"}]
execute if score @s uhc.menu.settings.team matches 01.. run function uhc:pre_game/menu/load/settings/team/menu

# Divers
execute if score @s uhc.player.lang matches 061801 run item replace entity @s inventory.7 with minecraft:music_disc_lava_chicken[minecraft:item_name=[{"text":"Divers","color":"#3FE7FF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:jukebox_playable"]},minecraft:custom_data={Tags:"settings_misc"}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s inventory.7 with minecraft:music_disc_lava_chicken[minecraft:item_name=[{"text":"Miscellaneous","color":"#3FE7FF","italic":false}],minecraft:tooltip_display={"hidden_components":["minecraft:jukebox_playable"]},minecraft:custom_data={Tags:"settings_misc"}]
execute if score @s uhc.menu.settings.misc matches 01.. run function uhc:pre_game/menu/load/settings/misc/menu
