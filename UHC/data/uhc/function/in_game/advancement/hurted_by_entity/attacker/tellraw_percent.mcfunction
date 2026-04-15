
#> uhc:in_game/advancement/hurted_by_entity/attacker/tellraw_percent
#
# @within			uhc:in_game/advancement/hurted_by_entity/attacker/
#
#
# @description		Le joueur a pris un dégât par un autre joueur
#

scoreboard players operation #temp uhc.player.health.100 = @p[tag=uhc.temp] uhc.player.health.100
execute if score #bhc bhc.scenario matches 51 run scoreboard players operation #temp uhc.player.health.100 = @p[tag=uhc.temp] uhc.player.health.reverse.100
scoreboard players operation #temp_entity uhc.player.health.100 = @s uhc.player.health.100
execute if score #bhc bhc.scenario matches 51 run scoreboard players operation #temp_entity uhc.player.health.100 = @s uhc.player.health.reverse.100

function uhc:translation/in_game/advancement_hurted_by_entity_attacker_tellraw_percent with storage uhc:temp hp
