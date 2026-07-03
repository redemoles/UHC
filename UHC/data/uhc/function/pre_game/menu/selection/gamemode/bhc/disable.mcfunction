
#> uhc:pre_game/menu/selection/gamemode/bhc/disable
#
# @within			uhc:pre_game/menu/load/gamemode_bhc/
#
#
# @description		Désactivation BHC
#

scoreboard players set #vanilla uhc.gamemode 0
scoreboard players set #bhc uhc.gamemode 0
scoreboard players set #bhc bhc.scenario -1
scoreboard players set #mls uhc.gamemode 0
scoreboard players set #mls mls.scenario -1
scoreboard players set #nzl uhc.gamemode 0

execute unless score #text bhc.scenario = #bhc bhc.scenario run function uhc:translation/menu/selected/gamemode_text_main
execute unless score #text bhc.scenario = #bhc bhc.scenario run function uhc:translation/menu/selected/gamemode_bhc_disabled
scoreboard players operation #text bhc.scenario = #bhc bhc.scenario

scoreboard players set #vanilla uhc.gamemode 1
