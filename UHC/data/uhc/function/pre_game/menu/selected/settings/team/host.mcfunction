
#> uhc:pre_game/menu/selected/settings/team/host
#
# @within			uhc:pre_game/menu/selected/settings/host
# 
#
# @description		Redirection
#

execute unless items entity @s inventory.10 *[minecraft:custom_data={Tags:"team_size"}] run return run function uhc:pre_game/menu/load/settings/team/team_size/preset_menu
execute unless items entity @s inventory.11 *[minecraft:custom_data={Tags:"team_format"}] run return run function uhc:pre_game/menu/load/settings/team/team_format
execute if score #random_team uhc.data.setup matches 1.. if score #team_size uhc.data.setup matches 2..3 unless items entity @s inventory.12 *[minecraft:custom_data={Tags:"pots_number"}] run return run function uhc:pre_game/menu/load/settings/team/pots_number
execute if score #random_team uhc.data.setup matches 1.. if score #team_size uhc.data.setup matches 2..3 unless items entity @s inventory.13 *[minecraft:custom_data={Tags:"random_team_instant"}] run return run function uhc:pre_game/menu/load/settings/team/random_now_instant
execute unless items entity @s inventory.16 *[minecraft:custom_data={Tags:"team_anonyme"}] run return run function uhc:pre_game/menu/load/settings/team/anonyme_team
