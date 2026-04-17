
#> uhc:in_game/advancement/hurted_by_entity/tellraw_heart
#
# @within			uhc:in_game/advancement/hurted_by_entity/
#
#
# @description		Le joueur a pris un dégât
#

scoreboard players operation #temp uhc.player.health.100 = @s uhc.player.health.20
execute if score #bhc bhc.scenario matches 51 run scoreboard players operation #temp uhc.player.health.100 = @s uhc.player.health.reverse.20

function uhc:translation/in_game/advancement_hurted_by_entity_heart with storage uhc:temp hp
