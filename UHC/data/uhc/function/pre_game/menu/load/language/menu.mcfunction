
#> uhc:pre_game/menu/load/language/menu
#
# @within			uhc:pre_game/menu/selection/main/host/main
#
#
# @description		Menu
#

clear @s
tag @s[tag=uhc.host] remove uhc.menu.main.host
execute unless score @s uhc.menu.language matches 1.. run scoreboard players set @s uhc.menu.language 1
scoreboard players set @s uhc.menu.main.player 0
scoreboard players set @s uhc.menu.default_language 0





function uhc:pre_game/menu/load/background/
function uhc:translation/menu/load/language/main
