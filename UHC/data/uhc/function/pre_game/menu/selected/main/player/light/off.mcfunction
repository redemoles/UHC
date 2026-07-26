
#> uhc:pre_game/menu/selected/main/player/light/off
#
# @within			uhc:pre_game/menu/selected/main/
#
#
# @description		Menu
#

tag @s remove uhc.night_vision
execute if score #game_progress uhc.game_progress matches 0 run function uhc:pre_game/menu/load/main/player/menu
execute if score #game_progress uhc.game_progress matches 1 run function uhc:in_game/player/spec/revive/new_player/menu/load/team
