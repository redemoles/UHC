
#> uhc:pre_game/menu/detector/menu
#
# @within			uhc:pre_game/menu/detector/main
#
#
# @description		Redirection
#

execute unless score #language uhc.player.lang matches 1.. if entity @s[tag=uhc.host] run return run function uhc:pre_game/menu/selected/language/default_lang/main
execute if score @s uhc.menu.main.player matches 1.. run return run function uhc:pre_game/menu/selected/main/player/main
execute if entity @s[tag=uhc.menu.main.host] run return run function uhc:pre_game/menu/selected/main/host/main
execute if score @s uhc.menu.gamemode.main matches 1 run return run function uhc:pre_game/menu/selected/gamemode/main
execute if score @s uhc.menu.gamemode.bhc matches 1.. run return run function uhc:pre_game/menu/selected/gamemode/bhc/main
execute if score @s uhc.menu.gamemode.main matches 2.. run return run function #plugin:pre_game/menu/selected/this_gamemode_menu/main
execute if entity @s[tag=uhc.menu.lobby] run return run function uhc:pre_game/menu/selected/lobby/main
execute if score @s uhc.menu.language matches 1.. run return run function uhc:pre_game/menu/selected/language/main
execute if score @s uhc.menu.default_language matches 1.. run return run function uhc:pre_game/menu/selected/language/default_lang/main
execute if score @s uhc.menu.scenario.blood_diamond matches 1.. run return run function uhc:pre_game/menu/selected/scenario/list/blood_diamond/main
execute if entity @s[tag=uhc.menu.scenario.enchanting_setup] run return run function uhc:pre_game/menu/selected/scenario/list/enchanting_setup/main
execute if score @s uhc.menu.scenario.ores_limit matches 1.. run return run function uhc:pre_game/menu/selected/scenario/list/ores_limit/main
execute if score @s uhc.menu.scenario.restricted_area matches 1.. run return run function uhc:pre_game/menu/selected/scenario/list/restricted_area/main
execute if score @s uhc.menu.scenario.main matches 1 run return run function uhc:pre_game/menu/selected/scenario/pages/1
execute if score @s uhc.menu.scenario.main matches 2 run return run function uhc:pre_game/menu/selected/scenario/pages/2
execute if score @s[tag=uhc.host] uhc.menu.settings matches 1.. run return run function uhc:pre_game/menu/selected/settings/host
execute if score @s[tag=!uhc.host] uhc.menu.settings matches 1.. run return run function uhc:pre_game/menu/selected/settings/player
execute if entity @s[tag=uhc.menu.start] run return run function uhc:pre_game/menu/selected/start
execute if entity @s[tag=uhc.menu.tp] run return run function uhc:pre_game/menu/selected/tp
execute if entity @s[tag=uhc.menu.world_check] run return run function uhc:pre_game/menu/selected/world_check
execute if entity @s[tag=uhc.menu.world_generation] run return run function uhc:pre_game/menu/selected/world_generation
