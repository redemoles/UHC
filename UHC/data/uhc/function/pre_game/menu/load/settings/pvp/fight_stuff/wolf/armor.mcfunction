
#> limit_number/armor
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Menu
#

scoreboard players add #wolf_armor uhc.data.setup 1
execute if score #wolf_armor uhc.data.setup matches 2 run scoreboard players set #wolf_armor uhc.data.setup 0
