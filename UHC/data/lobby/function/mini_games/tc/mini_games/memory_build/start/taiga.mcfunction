
#> lobby:mini_games/tc/mini_games/memory_build/start/taiga/
#
# @within			lobby:mini_games/tc/mini_games/memory_build/start/
#
#
# @description		Démarrage du mini-jeu Memory Build
#

execute as @a if score @s lobby.tc.data.record.memory_build.taiga = #record lobby.tc.data.record.memory_build.taiga run tag @s add mgs.tc.recordman

function uhc:translation/lobby/tc_mb_start_taiga

execute as @a[tag=mgs.tc.recordman] run tag @s remove mgs.tc.recordman
