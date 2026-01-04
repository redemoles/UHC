
#> uhc:in_game/player/spec/spec_info_trigger/pvp
#
# @within			uhc:in_game/player/tick
#
#
# @description		Activation/Désactivation des messages de dégâts PvP dans le chat
#

scoreboard players set @s uhc.spec_info.pvp 0
scoreboard players enable @s uhc.spec_info.pvp
execute if entity @s[tag=uhc.spec_info.pvp] run return run tag @s remove uhc.spec_info.pvp
tag @s add uhc.spec_info.pvp
