
#> uhc:start/setup/team/ffa_mode/marker/name
#
# @within			uhc:start/setup/team/ffa_mode/marker/id
#
#
# @description		Création des équipes
#

$data merge entity @s {Tags:["$(tag)","UHC"],CustomName:[{"text":"$(name)"}]}
$tp @s ~ ~$(tag) ~
