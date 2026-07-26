
#> uhc:pre_game/menu/load/main/player/team/chosen/main
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

execute if score @s uhc.player.lang matches 061801 run function uhc:translation/menu/load/team/page/fra_root
execute if score @s uhc.player.lang matches 051407 run function uhc:translation/menu/load/team/page/eng_root
function uhc:translation/menu/load/team/page/spec

function uhc:pre_game/menu/load/background/
