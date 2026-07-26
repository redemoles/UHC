
#> uhc:in_game/player/spec/revive/new_player/menu/selection/team/root
#
# @within			uhc:pre_game/menu/detector/menu
#
#
# @description		Redirection
#

execute unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"menu_language"}] run return run function uhc:pre_game/menu/load/language/menu
execute unless items entity @s[tag=!uhc.night_vision] inventory.7 *[minecraft:custom_data={Tags:"night_vision"}] run return run function uhc:pre_game/menu/selected/main/player/light/on
execute unless items entity @s[tag=uhc.night_vision] inventory.7 *[minecraft:custom_data={Tags:"night_vision"}] run return run function uhc:pre_game/menu/selected/main/player/light/off

execute if score @s uhc.menu.main.player matches 1..2 run function uhc:in_game/player/spec/revive/new_player/menu/selection/team/id/01-16/root
execute if score @s uhc.menu.main.player matches 3..4 run function uhc:in_game/player/spec/revive/new_player/menu/selection/team/id/17-32/root
execute unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"colors"}] run return run function uhc:in_game/player/spec/revive/new_player/menu/selection/team/pages/colors
execute unless items entity @s inventory.20 *[minecraft:custom_data={Tags:"symbol"}] run return run function uhc:in_game/player/spec/revive/new_player/menu/selection/team/pages/symbol
execute unless items entity @s inventory.19 *[minecraft:custom_data={Tags:"spectator"}] run function uhc:in_game/player/spec/revive/new_player/menu/selection/team/spec

function uhc:in_game/player/spec/revive/new_player/menu/load/team
