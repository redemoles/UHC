
#> uhc:pre_game/menu/selection/tp
#
# @within			uhc:pre_game/menu/detector/menu
#
#
# @description		Redirection
#

execute unless items entity @s[tag=mgs.jump] inventory.1 *[minecraft:custom_data={Tags:"tp_center"}] run return run function lobby:mini_games/rjg/player/out
execute unless items entity @s[tag=!mgs.jump] inventory.1 *[minecraft:custom_data={Tags:"tp_center"}] run return run function uhc:pre_game/menu/load/tp/center

execute unless items entity @s[tag=mgs.jump,scores={uhc.player.lang=061801}] inventory.2 *[minecraft:custom_data={Tags:"tp_jump"}] run tellraw @s [{"text":"Action impossible.","color":"#FF3F3F"}]
execute unless items entity @s[tag=mgs.jump,scores={uhc.player.lang=051407}] inventory.2 *[minecraft:custom_data={Tags:"tp_jump"}] run tellraw @s [{"text":"Impossible action.","color":"#FF3F3F"}]
execute unless items entity @s[tag=!mgs.jump] inventory.2 *[minecraft:custom_data={Tags:"tp_jump"}] run return run function uhc:pre_game/menu/load/tp/jump

execute unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/player/

function uhc:pre_game/menu/load/tp/
