
#> uhc:in_game/player/spec/spec_info_trigger/pve
#
# @within			uhc:in_game/player/tick
#
#
# @description		Activation/Désactivation des messages de dégâts PvE dans le chat
#

scoreboard players set @s uhc.spec_info.pve 0
scoreboard players enable @s uhc.spec_info.pve
execute if entity @s[tag=uhc.spec_info.pve] run return run tag @s remove uhc.spec_info.pve
tag @s add uhc.spec_info.pve
