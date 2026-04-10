
#> uhc:start/game_ffa/marker/name
#
# @within			uhc:start/game_ffa/marker/id
#
#
# @description		Création des équipes
#

$data merge entity @s {Tags:["$(tag)","UHC"],CustomName:[{"text":"$(name)"}]}
$tp @s ~ ~$(tag) ~
