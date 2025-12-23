
#> uhc:pre_game/menu/load/gamemode/bhc/grids_check/00/disable
#
# @within			uhc:pre_game/menu/load/gamemode_bhc/
#
#
# @description		Vérification des grilles de bingo
#

scoreboard players set #bingo_0a_enabled bhc.data 0
scoreboard players set #bingo_0b_enabled bhc.data 0

advancement revoke @a from bingo_0a:root
advancement revoke @a from bingo_0b:root
