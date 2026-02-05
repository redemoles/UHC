
#> bhc:start/team_shuffle/randomizer
#
# @within			bhc:start/team_shuffle/
#
#
# @description		Anonymisation des équipes
#

scoreboard players add #new_team uhc.id.team 3
execute if score #new_team uhc.id.team matches 17.. run scoreboard players remove #new_team uhc.id.team 16
execute as @r[tag=uhc.player,scores={uhc.id.team=101..132}] run scoreboard players operation #team uhc.id.team = @s uhc.id.team
scoreboard players operation @a[predicate=uhc:id/team] uhc.id.team = #new_team uhc.id.team
execute if entity @p[tag=uhc.player,scores={uhc.id.team=101..132}] run function bhc:start/team_shuffle/randomizer
