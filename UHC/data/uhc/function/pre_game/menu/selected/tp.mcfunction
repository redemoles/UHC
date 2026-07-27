
#> uhc:pre_game/menu/selected/tp
#
# @within			uhc:pre_game/menu/detector/menu
#
#
# @description		Redirection
#

execute unless items entity @s[tag=mgs.jump] inventory.22 *[minecraft:custom_data={Tags:"tp_center"}] run return run function lobby:mini_games/rjg/player/out
execute unless items entity @s[tag=!mgs.jump] inventory.22 *[minecraft:custom_data={Tags:"tp_center"}] run return run function uhc:pre_game/menu/selected/tp/center

execute unless items entity @s[tag=mgs.jump] inventory.4 *[minecraft:custom_data={Tags:"tp_jump"}] run function uhc:translation/menu/selected/impossible_action
execute unless items entity @s[tag=!mgs.jump] inventory.4 *[minecraft:custom_data={Tags:"tp_jump"}] run return run function uhc:pre_game/menu/selected/tp/jump

execute unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/player/menu

function uhc:pre_game/menu/load/tp/main
