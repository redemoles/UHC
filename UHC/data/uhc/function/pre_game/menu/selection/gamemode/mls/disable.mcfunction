
#> uhc:pre_game/menu/selection/gamemode/mls/disable
#
# @within			uhc:pre_game/menu/load/gamemode_bhc/
#
#
# @description		Désactivation Moles
#

scoreboard players set #vanilla uhc.gamemode 1
scoreboard players set #bhc uhc.gamemode 0
scoreboard players set #bhc bhc.scenario -1
scoreboard players set #mls uhc.gamemode 0
scoreboard players set #mls mls.scenario -1
scoreboard players set #nzl uhc.gamemode 0

execute unless score #text mls.scenario = #mls mls.scenario run function uhc:translation/menu/selected/gamemode_text_main
execute unless score #text mls.scenario = #mls mls.scenario run function uhc:translation/menu/selected/gamemode_mls_disabled
execute unless score #text mls.scenario = #mls mls.scenario run scoreboard players remove #custom_arrow uhc.data.setup 1
scoreboard players operation #text mls.scenario = #mls mls.scenario
