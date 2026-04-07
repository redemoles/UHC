
#> uhc:pre_game/world_check/text_trigger/main
#
# @within			uhc:pre_game/world_check/spawns
#
#
# @description		Vérification des points de spawns des équipes
#

execute if score @s uhc.player.lang matches 061801 run function uhc:pre_game/world_check/text_trigger/fra
execute if score @s uhc.player.lang matches 051407 run function uhc:pre_game/world_check/text_trigger/eng