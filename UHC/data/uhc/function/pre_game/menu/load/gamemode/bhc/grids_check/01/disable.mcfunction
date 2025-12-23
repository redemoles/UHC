
#> uhc:pre_game/menu/load/gamemode/bhc/grids_check/01/disable
#
# @within			uhc:pre_game/menu/load/gamemode_bhc/
#
#
# @description		Vérification des grilles de bingo
#

scoreboard players set #bingo_1a_enabled bhc.data 0
scoreboard players set #bingo_1b_enabled bhc.data 0

advancement revoke @a from bingo_1a:root
advancement revoke @a from bingo_1b:root
