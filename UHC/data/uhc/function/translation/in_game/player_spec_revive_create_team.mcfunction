
#> uhc:translation/in_game/player_spec_revive_create_team
#
# @within			uhc:in_game/player/spec/revive/new_player/team_joined/player
#
#
# @description		Annulation de la resurrection
#

## FRA - Français / French
execute if score #language uhc.player.lang matches 061801 run function uhc:start/setup/team/team_mode/marker/team_name/fra

## ENG - English
execute if score #language uhc.player.lang matches 051407 run function uhc:start/setup/team/team_mode/marker/team_name/eng
