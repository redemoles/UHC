
#> uhc:in_game/player/spec/spec_info_trigger/blood_diamond
#
# @within			uhc:in_game/player/tick
#
#
# @description		Activation/Désactivation des messages du scénario Blood Diamond dans le chat
#

scoreboard players set @s uhc.spec_info.blood_diamond 0
scoreboard players enable @s uhc.spec_info.blood_diamond
execute if entity @s[tag=uhc.spec_info.blood_diamond] run return run tag @s remove uhc.spec_info.blood_diamond
tag @s add uhc.spec_info.blood_diamond
