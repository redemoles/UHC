
#> uhc:pre_game/menu/selection/main/player/light/on
#
# @within			uhc:pre_game/menu/selection/main/
#
#
# @description		Menu
#

tag @s add uhc.night_vision
execute if score #game_progress uhc.game_progress matches 0 run function uhc:pre_game/menu/load/main/player/menu
execute if score #game_progress uhc.game_progress matches 1 run function uhc:in_game/player/spec/revive/new_player/menu/load/team
