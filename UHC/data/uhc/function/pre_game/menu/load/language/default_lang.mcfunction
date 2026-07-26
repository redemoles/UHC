
#> uhc:pre_game/menu/load/language/default_lang
#
# @within			uhc:pre_game/menu/selected/main/host/main
#
#
# @description		Menu
#

clear @s
tag @s[tag=uhc.host] remove uhc.menu.main.host
execute unless score @s uhc.menu.default_language matches 1.. run scoreboard players set @s uhc.menu.default_language 1
scoreboard players set @s uhc.menu.main.player 0
scoreboard players set @s uhc.menu.language 0





function uhc:pre_game/menu/load/background/
function uhc:translation/menu/load/language/default_lang
