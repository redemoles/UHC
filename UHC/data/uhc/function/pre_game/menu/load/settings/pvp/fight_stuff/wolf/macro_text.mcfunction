
#> uhc:pre_game/menu/load/settings/pvp/fight_stuff/wolf/macro_text
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score #wolf_limit uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=061801,uhc.menu.settings.pvp=11..20}] inventory.12 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Aucune limite de loups","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_pvp_wolf"}]
execute if score #wolf_limit uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=061801,uhc.menu.settings.pvp=13},tag=uhc.host] inventory.22 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"Aucune limite de loups","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_pvp_wolf"}]

$execute if score #wolf_limit uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=061801,uhc.menu.settings.pvp=11..20}] inventory.12 with minecraft:wolf_spawn_egg[minecraft:item_name=[{"text":"Limite de loups > ","color":"#E7E7E7","italic":false},$(wolf_limit),{"text":" par personne","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_pvp_wolf"}]
$execute if score #wolf_limit uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=061801,uhc.menu.settings.pvp=13},tag=uhc.host] inventory.22 with minecraft:wolf_spawn_egg[minecraft:item_name=[{"text":"Limite de loups > ","color":"#E7E7E7","italic":false},$(wolf_limit),{"text":" par personne","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_pvp_wolf"}]

execute if score #wolf_limit uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=051407,uhc.menu.settings.pvp=11..20}] inventory.12 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"No limit of wolves","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_pvp_wolf"}]
execute if score #wolf_limit uhc.data.setup matches 0 run item replace entity @s[scores={uhc.player.lang=051407,uhc.menu.settings.pvp=13},tag=uhc.host] inventory.22 with minecraft:red_stained_glass[minecraft:item_name=[{"text":"No limit of wolves","color":"#FF3F3F","italic":false}],minecraft:custom_data={Tags:"settings_pvp_wolf"}]

$execute if score #wolf_limit uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=051407,uhc.menu.settings.pvp=11..20}] inventory.12 with minecraft:wolf_spawn_egg[minecraft:item_name=[{"text":"Limit of wolves > ","color":"#E7E7E7","italic":false},$(wolf_limit),{"text":" per person","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_pvp_wolf"}]
$execute if score #wolf_limit uhc.data.setup matches 1 run item replace entity @s[scores={uhc.player.lang=051407,uhc.menu.settings.pvp=13},tag=uhc.host] inventory.22 with minecraft:wolf_spawn_egg[minecraft:item_name=[{"text":"Limit of wolves > ","color":"#E7E7E7","italic":false},$(wolf_limit),{"text":" per person","color":"#3FE7FF","italic":false}],minecraft:custom_data={Tags:"settings_pvp_wolf"}]
