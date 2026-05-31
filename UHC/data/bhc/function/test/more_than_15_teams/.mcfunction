
#> bhc:test/more_than_15_teams/
#
# @within			
#
#
# @description		Simulation d'une partie à plus de 15 équipes
#

function uhc:start/main
execute in uhc:lobby run schedule function bhc:test/more_than_15_teams/schedule 160t
