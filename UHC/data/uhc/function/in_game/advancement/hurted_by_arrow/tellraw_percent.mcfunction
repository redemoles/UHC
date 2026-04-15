
#> uhc:in_game/advancement/hurted_by_arrow/tellraw_percent
#
# @within			uhc:in_game/advancement/hurted_by_entity/
#
#
# @description		Le joueur s'est fait tiré dessus
#

# Données du joueur
execute if score #team_health uhc.scenario matches 0 run scoreboard players operation #temp uhc.player.health.100 = @s uhc.player.health.100
execute if score #team_health uhc.scenario matches 1 run scoreboard players operation #temp uhc.player.health.100 = @s uhc.scenario.team_health.100
execute if score #bhc bhc.scenario matches 51 if score #team_health uhc.scenario matches 0 run scoreboard players operation #temp uhc.player.health.100 = @s uhc.player.health.reverse.20
execute if score #bhc bhc.scenario matches 51 if score #team_health uhc.scenario matches 1 run scoreboard players operation #temp uhc.player.health.100 = @s uhc.player.health.reverse.100

function uhc:translation/in_game/advancement_hurted_by_arrow_tellraw_percent
