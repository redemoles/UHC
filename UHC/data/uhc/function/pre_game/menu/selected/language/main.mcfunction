
#> uhc:pre_game/menu/selected/language/main
#
# @within			uhc:pre_game/menu/detector/menu
#
#
# @description		Redirection
#

execute unless items entity @s inventory.1 *[minecraft:custom_data={Tags:"lang_fra"}] run scoreboard players set @s uhc.player.lang 061801
execute unless items entity @s inventory.2 *[minecraft:custom_data={Tags:"lang_eng"}] run scoreboard players set @s uhc.player.lang 051407

execute unless score #game_progress uhc.game_progress matches 1.. unless items entity @s[tag=uhc.host] inventory.19 *[minecraft:custom_data={Tags:"default"}] run return run function uhc:pre_game/menu/load/language/default_lang

execute unless score #game_progress uhc.game_progress matches 1.. if entity @s[tag=!uhc.host] unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/player/menu
execute unless score #game_progress uhc.game_progress matches 1.. if entity @s[tag=uhc.host] unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:pre_game/menu/load/main/host/menu
execute if score @s uhc.menu.language matches 1.. unless items entity @s inventory.25 *[minecraft:custom_data={Tags:"close"}] run return run function uhc:in_game/player/spec/revive/new_player/menu/load/team
execute if score @s uhc.menu.language matches 1.. run function uhc:pre_game/menu/load/language/menu
