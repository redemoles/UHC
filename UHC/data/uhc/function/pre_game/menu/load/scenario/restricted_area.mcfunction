
#> uhc:pre_game/menu/load/scenario/restricted_area
#
# @within			uhc:pre_game/menu/selected/scenario/list/
#
#
# @description		Menu Scénario à zone restreinte
#

clear @s
execute if score #sky_high uhc.scenario matches 1 unless score @s uhc.menu.scenario.restricted_area matches 1.. run scoreboard players set @s uhc.menu.scenario.restricted_area 2
execute if score #go_to_hell uhc.scenario matches 1 unless score @s uhc.menu.scenario.restricted_area matches 1.. run scoreboard players set @s uhc.menu.scenario.restricted_area 2
execute unless score @s uhc.menu.scenario.restricted_area matches 1.. run scoreboard players set @s uhc.menu.scenario.restricted_area 1






function uhc:pre_game/menu/load/background/

function uhc:translation/menu/load/scenario/go_to_hell with storage uhc:scenario go_to_hell
function uhc:translation/menu/load/scenario/sky_high with storage uhc:scenario sky_high
function uhc:translation/menu/load/scenario/restricted_area

function uhc:translation/menu/load/close
