
#> bhc:in_game/timer/scoreboard/displayed/kills
#
# @within			bhc:in_game/timer/scoreboard/displayed/
#
#
# @description		Mise à jour du scoreboard
#

# Équipe
data modify storage bhc:temp data.team set from entity @s data.team

# Rang
scoreboard players operation #temp_tens bhc.kills.rank.number = @s bhc.kills.rank.number
scoreboard players operation #temp_units bhc.kills.rank.number = #temp_tens bhc.kills.rank.number

execute store result storage bhc:temp data.rank_number int 1 run scoreboard players get #temp_tens bhc.kills.rank.number

scoreboard players operation #temp_tens bhc.kills.rank.number /= #10 uhc.data.numbers
execute store result storage bhc:temp data.rank_number_tens int 1 run scoreboard players get #temp_tens bhc.kills.rank.number

scoreboard players operation #temp_tens bhc.kills.rank.number *= #10 uhc.data.numbers
scoreboard players operation #temp_units bhc.kills.rank.number -= #temp_tens bhc.kills.rank.number
execute store result storage bhc:temp data.rank_number_units int 1 run scoreboard players get #temp_units bhc.kills.rank.number

function bhc:in_game/timer/scoreboard/displayed/display with storage bhc:temp data
