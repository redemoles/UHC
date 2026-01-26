
#> uhc:start/game_ffa/id_marker
#
# @within			uhc:start/setup_players
#
#
# @description		Création des équipes
#

$data merge entity @s {Tags:["$(tag)","UHC"],CustomName:[{"text":"$(name)"}]}
$tp @s ~ ~$(tag) ~
