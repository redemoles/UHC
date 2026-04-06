
#> uhc:pre_game/menu/load/main/player/team/chosen/main
#
# @within			uhc:pre_game/menu/selection/
#
#
# @description		Menu
#

execute if score @s uhc.menu.main.player matches 1 run function uhc:pre_game/menu/load/main/player/team/chosen/page_1
execute if score @s uhc.menu.main.player matches 2 run function uhc:pre_game/menu/load/main/player/team/chosen/page_2
execute if score @s uhc.menu.main.player matches 3 run function uhc:pre_game/menu/load/main/player/team/chosen/page_3
execute if score @s uhc.menu.main.player matches 4 run function uhc:pre_game/menu/load/main/player/team/chosen/page_4
function uhc:pre_game/menu/load/main/player/team/chosen/spec

function uhc:pre_game/menu/load/background/
