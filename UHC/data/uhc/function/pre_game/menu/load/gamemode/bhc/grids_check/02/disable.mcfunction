
#> uhc:pre_game/menu/load/gamemode/bhc/grids_check/02/disable
#
# @within			uhc:pre_game/menu/load/gamemode_bhc/
#
#
# @description		Vérification des grilles de bingo
#

scoreboard players set #bingo_2a_enabled bhc.data 0
scoreboard players set #bingo_2b_enabled bhc.data 0

advancement revoke @a from bingo_2a:root
advancement revoke @a from bingo_2b:root
