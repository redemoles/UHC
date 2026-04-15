
#> uhc:translation/start_game_team_marker_id
#
# @within			uhc:start/game_team/marker/id
#
#
#
#

## FRA - Français / French
execute if score #language uhc.player.lang matches 061801 run function uhc:start/game_team/marker/team_name/fra

## ENG - English
execute if score #language uhc.player.lang matches 051407 run function uhc:start/game_team/marker/team_name/eng