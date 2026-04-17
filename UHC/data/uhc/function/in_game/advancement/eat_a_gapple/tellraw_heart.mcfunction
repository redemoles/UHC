
#> uhc:in_game/advancement/eat_a_gapple/tellraw_heart
#
# @within			uhc:in_game/advancement/eat_a_gapple/
#
#
# @description		Le joueur s'est fait tiré dessus
#

# Données du joueur
execute if score #team_health uhc.scenario matches 0 run scoreboard players operation #temp uhc.player.health.100 = @s uhc.player.health.20
execute if score #team_health uhc.scenario matches 1 run scoreboard players operation #temp uhc.player.health.100 = @s uhc.scenario.team_health.team
execute if score #bhc bhc.scenario matches 51 if score #team_health uhc.scenario matches 0 run scoreboard players operation #temp uhc.player.health.100 = @s uhc.player.health.reverse.20
execute if score #bhc bhc.scenario matches 51 if score #team_health uhc.scenario matches 1 run scoreboard players operation #temp uhc.player.health.100 = @s uhc.player.health.reverse.100

function uhc:translation/in_game/advancement_eat_a_gapple_heart with storage uhc:temp hp
