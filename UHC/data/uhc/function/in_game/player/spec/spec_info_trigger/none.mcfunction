
#> uhc:in_game/player/spec/spec_info_trigger/none
#
# @within			uhc:in_game/player/tick
#
#
# @description		Désactivation de toutes les notifications spectateur dans le chat
#

scoreboard players set @s uhc.spec_info.none 0
scoreboard players enable @s uhc.spec_info.none
tag @s remove uhc.spec_info.blood_diamond
tag @s remove uhc.spec_info.pve
tag @s remove uhc.spec_info.pvp
