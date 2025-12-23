
#> uhc:in_game/player/pvp/damage_dealt/
#
# @within			uhc:in_game/timer/players
#
#
# @description		Détection dégât émis sur tout entité
#

tag @s add uhc.temp.attacker

scoreboard players operation #team uhc.id.team = @s uhc.id.team
execute in uhc:lobby as @n[type=marker,tag=UHC,distance=0..,predicate=uhc:id_team] run scoreboard players operation @s uhc.player.damage_dealt = @s uhc.player.damage_dealt.temp
scoreboard players set @s uhc.player.damage_dealt.temp 0

tag @s remove uhc.temp.attacker
