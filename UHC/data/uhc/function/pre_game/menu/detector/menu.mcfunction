
#> uhc:pre_game/menu/detector/menu
#
# @within			uhc:pre_game/menu/detector/main
#
#
# @description		Redirection
#

execute unless score #language uhc.player.lang matches 1.. if entity @s[tag=uhc.host] run return run function uhc:pre_game/menu/selection/language/default_lang/main
execute if score @s uhc.menu.main.player matches 1.. run return run function uhc:pre_game/menu/selection/main/player/main
execute if entity @s[tag=uhc.menu.main.host] run return run function uhc:pre_game/menu/selection/main/host/main
execute if entity @s[tag=uhc.menu.gamemode] run return run function uhc:pre_game/menu/selection/gamemode/main
execute if score @s uhc.menu.gamemode.bhc matches 1.. run return run function uhc:pre_game/menu/selection/gamemode/bhc/main
execute if score @s uhc.menu.gamemode.mls matches 1.. run return run function uhc:pre_game/menu/selection/gamemode/mls/main
execute if entity @s[tag=uhc.menu.lobby] run return run function uhc:pre_game/menu/selection/lobby/main
execute if score @s uhc.menu.language matches 1.. run return run function uhc:pre_game/menu/selection/language/main
execute if score @s uhc.menu.default_language matches 1.. run return run function uhc:pre_game/menu/selection/language/default_lang/main
execute if score @s uhc.menu.scenario.blood_diamond matches 1.. run return run function uhc:pre_game/menu/selection/scenario/blood_diamond/main
execute if entity @s[tag=uhc.menu.scenario.enchanting_setup] run return run function uhc:pre_game/menu/selection/scenario/enchanting_setup/main
execute if score @s uhc.menu.scenario.restricted_area matches 1.. run return run function uhc:pre_game/menu/selection/scenario/restricted_area/main
execute if score @s uhc.menu.scenario.main matches 1 run return run function uhc:pre_game/menu/selection/scenario/pages/1
execute if score @s uhc.menu.scenario.main matches 2 run return run function uhc:pre_game/menu/selection/scenario/pages/2
execute if score @s[tag=uhc.host] uhc.menu.settings matches 1.. run return run function uhc:pre_game/menu/selection/settings/host
execute if score @s[tag=!uhc.host] uhc.menu.settings matches 1.. run return run function uhc:pre_game/menu/selection/settings/player
execute if entity @s[tag=uhc.menu.start] run return run function uhc:pre_game/menu/selection/start
execute if entity @s[tag=uhc.menu.tp] run return run function uhc:pre_game/menu/selection/tp
execute if entity @s[tag=uhc.menu.world_check] run return run function uhc:pre_game/menu/selection/world_check
execute if entity @s[tag=uhc.menu.world_generation] run return run function uhc:pre_game/menu/selection/world_generation
