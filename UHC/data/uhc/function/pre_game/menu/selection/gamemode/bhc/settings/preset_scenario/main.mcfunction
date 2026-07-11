
#> uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/main
#
# @within			uhc:pre_game/menu/selection/gamemode/bhc/main
#
#
# @description		Paramètres prédéfinis pour BHC
#

execute if score #bhc bhc.scenario matches 00 run function uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/00
execute if score #bhc bhc.scenario matches 01 run function uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/01
execute if score #bhc bhc.scenario matches 02 run function uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/02
execute if score #bhc bhc.scenario matches 03 run function uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/03
execute if score #bhc bhc.scenario matches 04 run function uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/04
execute if score #bhc bhc.scenario matches 05 run function uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/05
execute if score #bhc bhc.scenario matches 06 run function uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/06
execute if score #bhc bhc.scenario matches 07 run function uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/07
execute if score #bhc bhc.scenario matches 08 run function uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/08
execute if score #bhc bhc.scenario matches 51 run function uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/51
execute if score #bhc bhc.scenario matches 91 run function uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/91
execute if score #bhc bhc.scenario matches 92 run function uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/92
execute if score #bhc bhc.scenario matches 99 run function uhc:pre_game/menu/selection/gamemode/bhc/settings/preset_scenario/99

function uhc:translation/menu/load/gamemode/bhc_uhc_settings
function uhc:pre_game/menu/load/gamemode/bhc/main
