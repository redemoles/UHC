
#> uhc:pre_game/menu/selected/gamemode/bhc/grids_check/92/disable
#
# @within			uhc:pre_game/menu/load/gamemode_bhc/
#
#
# @description		Vérification des grilles de bingo
#

scoreboard players set #bingo_92a_enabled bhc.data 0
scoreboard players set #bingo_92b_enabled bhc.data 0

advancement revoke @a from bingo_92a:root
advancement revoke @a from bingo_92b:root
