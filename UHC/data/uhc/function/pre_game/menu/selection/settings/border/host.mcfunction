
#> uhc:pre_game/menu/selection/settings/border/host
#
# @within			uhc:pre_game/menu/selection/settings/host
# 
#
# @description		Redirection
#

execute unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"settings_border"}] run function uhc:pre_game/menu/load/settings/border/shrink_choice/apply_change
execute unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"settings_border"}] run function uhc:pre_game/menu/load/settings/border/size_start/apply_change
execute unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"settings_border"}] run function uhc:pre_game/menu/load/settings/border/size_end/apply_change
execute unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"settings_border"}] run function uhc:pre_game/menu/load/settings/border/start_timer/apply_change
execute unless items entity @s inventory.14 *[minecraft:custom_data={Tags:"settings_border"}] run function uhc:pre_game/menu/load/settings/border/duration/apply_change
execute unless items entity @s inventory.16 *[minecraft:custom_data={Tags:"settings_border"}] run function uhc:pre_game/menu/load/settings/border/dynamic/apply_change
