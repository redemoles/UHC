
#> uhc:in_game/player/pvp/damage_dealt/
#
# @within			uhc:in_game/player/tick
#
#
# @description		Détection dégâts émis 
#

scoreboard players operation #temp uhc.player.damage_dealt.temp = @s uhc.player.damage_dealt.temp
scoreboard players operation @s uhc.player.damage_dealt.total += #temp uhc.player.damage_dealt.temp
scoreboard players operation @s uhc.player.damage_dealt.pve += #temp uhc.player.damage_dealt.temp
scoreboard players set @s uhc.player.damage_dealt.temp 0
