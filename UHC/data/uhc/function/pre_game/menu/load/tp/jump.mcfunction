
#> uhc:pre_game/menu/load/tp/jump
#
# @within			uhc:pre_game/menu/selection/main/
#
#
# @description		Menu
#


function uhc:pre_game/player_and_team/team_join
effect clear @s minecraft:darkness
effect clear @s minecraft:invisibility
effect clear @s minecraft:night_vision

tag @s remove mgs.backroom
tag @s add mgs.jump
tag @s add mgs.jump.infinite
tag @s remove mgs.tc.spec
tag @s remove mgs.tc.player
function lobby:mini_games/rjg/start/

function uhc:pre_game/menu/load/tp/
