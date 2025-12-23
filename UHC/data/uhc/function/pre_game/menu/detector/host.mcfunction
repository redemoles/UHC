
#> uhc:pre_game/menu/detector/host
#
# @within			uhc:pre_game/menu/detector/
#
#
# @description		Redirection
#

execute if score @s uhc.menu.main.player matches 1.. run return run function uhc:pre_game/menu/selection/main/player/
execute if entity @s[tag=uhc.menu.main.host] run return run function uhc:pre_game/menu/selection/main/host
execute if entity @s[tag=uhc.menu.gamemode] run return run function uhc:pre_game/menu/selection/gamemode/main
execute if score @s uhc.menu.gamemode.bhc matches 1.. run return run function uhc:pre_game/menu/selection/gamemode/bhc/main
execute if score @s uhc.menu.gamemode.mls matches 1.. run return run function uhc:pre_game/menu/selection/gamemode/mls
execute if entity @s[tag=uhc.menu.lobby] run return run function uhc:pre_game/menu/selection/lobby
execute if entity @s[tag=uhc.menu.scenario.1] run return run function uhc:pre_game/menu/selection/scenario/1
execute if entity @s[tag=uhc.menu.scenario.2] run return run function uhc:pre_game/menu/selection/scenario/2
execute if score @s uhc.menu.scenario.blood_diamond matches 1.. run return run function uhc:pre_game/menu/selection/scenario/blood_diamond
execute if entity @s[tag=uhc.menu.scenario.enchanting_setup] run return run function uhc:pre_game/menu/selection/scenario/enchanting_setup
execute if score @s[tag=uhc.host] uhc.menu.settings matches 1.. run return run function uhc:pre_game/menu/selection/settings/host
execute if score @s[tag=!uhc.host] uhc.menu.settings matches 1.. run return run function uhc:pre_game/menu/selection/settings/player
execute if score @s uhc.menu.team_settings matches 1.. run return run function uhc:pre_game/menu/selection/team_settings
execute if entity @s[tag=uhc.menu.start] run return run function uhc:pre_game/menu/selection/start
execute if entity @s[tag=uhc.menu.tp] run return run function uhc:pre_game/menu/selection/tp
execute if entity @s[tag=uhc.menu.world_check] run return run function uhc:pre_game/menu/selection/world_check
execute if entity @s[tag=uhc.menu.world_generation] run return run function uhc:pre_game/menu/selection/world_generation
