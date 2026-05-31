
#> uhc:start/setup/scenario/biome_paranoia/root
#
# @within			uhc:start/setup/player/when_tp
#
#
# @description		Randomiseur de la liste des joueurs dans le tab
#

scoreboard players add #team uhc.id.team 1
execute if score #anonyme_team uhc.data.setup matches 0 as @a[predicate=uhc:id/team] run function uhc:start/setup/scenario/biome_paranoia/id_team
execute if score #anonyme_team uhc.data.setup matches 1 as @r[tag=uhc.player,tag=!uhc.scenario.biome_paranoia.team] run function uhc:start/setup/scenario/biome_paranoia/id_team
execute if entity @p[tag=uhc.player,tag=!uhc.scenario.biome_paranoia.team] run function uhc:start/setup/scenario/biome_paranoia/root
