
#> uhc:translation/menu/load/team/page/fra_root
#
# @within			uhc:pre_game/menu/load/main/player/team/chosen/main
#
#
# @description		Menu
#

execute if score @s uhc.menu.main.player matches 1 run function uhc:translation/menu/load/team/page/fra_01_08
execute if score @s uhc.menu.main.player matches 2 run function uhc:translation/menu/load/team/page/fra_09_16
execute if score @s uhc.menu.main.player matches 3 run function uhc:translation/menu/load/team/page/fra_17_24
execute if score @s uhc.menu.main.player matches 4 run function uhc:translation/menu/load/team/page/fra_25_32
