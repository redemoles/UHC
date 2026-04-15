
#> uhc:pre_game/menu/selection/tp/center
#
# @within			uhc:pre_game/menu/selection/main/
#
#
# @description		Menu
#

execute in uhc:lobby run tp @s 0 65 0 0 0
function uhc:pre_game/player_and_team/team_join
effect clear @s minecraft:darkness
effect clear @s minecraft:invisibility
effect clear @s minecraft:night_vision

tag @s remove mgs.backroom
tag @s remove mgs.jump
tag @s remove mgs.jump.race
tag @s remove mgs.jump.infinite
tag @s remove mgs.jump.speedrun
tag @s remove mgs.tc.spec
tag @s remove mgs.tc.player

execute if entity @s[tag=uhc.menu.tp] run function uhc:pre_game/menu/load/tp/main
