
#> bhc:in_game/timer/scoreboard/displayed/stepb
#
# @within			bhc:in_game/timer/scoreboard/displayed/
#
#
# @description		Mise à jour du scoreboard
#

# Équipe
data modify storage bhc:temp data.team set from entity @s data.team

# Rang
scoreboard players operation #temp_tens bhc.stepb.rank.number = @s bhc.stepb.rank.number
scoreboard players operation #temp_units bhc.stepb.rank.number = #temp_tens bhc.stepb.rank.number

execute store result storage bhc:temp data.rank_number int 1 run scoreboard players get #temp_tens bhc.stepb.rank.number

scoreboard players operation #temp_tens bhc.stepb.rank.number /= #10 uhc.data.numbers
execute store result storage bhc:temp data.rank_number_tens int 1 run scoreboard players get #temp_tens bhc.stepb.rank.number

scoreboard players operation #temp_tens bhc.stepb.rank.number *= #10 uhc.data.numbers
scoreboard players operation #temp_units bhc.stepb.rank.number -= #temp_tens bhc.stepb.rank.number
execute store result storage bhc:temp data.rank_number_units int 1 run scoreboard players get #temp_units bhc.stepb.rank.number

function bhc:in_game/timer/scoreboard/displayed/display with storage bhc:temp data
