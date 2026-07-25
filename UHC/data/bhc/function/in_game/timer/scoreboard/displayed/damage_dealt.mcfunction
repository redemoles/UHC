
#> bhc:in_game/timer/scoreboard/displayed/damage_dealt
#
# @within			bhc:in_game/timer/scoreboard/displayed/
#
#
# @description		Mise à jour du scoreboard
#

# Équipe
data modify storage bhc:temp data.team set from entity @s data.team

# Rang
scoreboard players operation #temp_tens bhc.kills.damage_dealt.rank = @s bhc.kills.damage_dealt.rank
scoreboard players operation #temp_units bhc.kills.damage_dealt.rank = #temp_tens bhc.kills.damage_dealt.rank

execute store result storage bhc:temp data.rank_number int 1 run scoreboard players get #temp_tens bhc.kills.damage_dealt.rank

scoreboard players operation #temp_tens bhc.kills.damage_dealt.rank /= #10 uhc.data.numbers
execute store result storage bhc:temp data.rank_number_tens int 1 run scoreboard players get #temp_tens bhc.kills.damage_dealt.rank

scoreboard players operation #temp_tens bhc.kills.damage_dealt.rank *= #10 uhc.data.numbers
scoreboard players operation #temp_units bhc.kills.damage_dealt.rank -= #temp_tens bhc.kills.damage_dealt.rank
execute store result storage bhc:temp data.rank_number_units int 1 run scoreboard players get #temp_units bhc.kills.damage_dealt.rank

function bhc:in_game/timer/scoreboard/displayed/display with storage bhc:temp data
