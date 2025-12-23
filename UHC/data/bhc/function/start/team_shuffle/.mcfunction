
#> bhc:start/team_shuffle/
#
# @within			uhc:start/setup_players
#
#
# @description		Anonymisation des équipes
#

scoreboard players add @a[tag=uhc.player] uhc.id.team 100
scoreboard players set #new_team uhc.id.team 0
execute store result score #new_team uhc.id.team run random value 0..15
function bhc:start/team_shuffle/randomizer
