
#> uhc:start/scenario/biome_paranoia/
#
# @within			uhc:start/setup_players
#
#
# @description		Randomiseur de la liste des joueurs dans le tab
#

scoreboard players add #team uhc.id.team 1
execute if score #anonyme_team uhc.data.setup matches 0 as @a[predicate=uhc:id/team] run function uhc:start/scenario/biome_paranoia/0
execute if score #anonyme_team uhc.data.setup matches 1 as @r[tag=uhc.player] run function uhc:start/scenario/biome_paranoia/0
execute if entity @p[tag=uhc.player,tag=!uhc.scenario.biome_paranoia.team] run function uhc:start/scenario/biome_paranoia/
