
#> uhc:in_game/player/spec/spec_info_trigger/all
#
# @within			uhc:in_game/player/tick
#
#
# @description		Activation de toutes les notifications spectateur dans le chat
#

scoreboard players set @s uhc.spec_info.all 0
scoreboard players enable @s uhc.spec_info.all
execute if score #blood_diamond uhc.scenario matches 1.. run tag @s add uhc.spec_info.blood_diamond
tag @s add uhc.spec_info.pve
tag @s add uhc.spec_info.pvp
