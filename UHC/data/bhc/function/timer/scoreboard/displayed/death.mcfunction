
#> bhc:timer/scoreboard/displayed/death
#
# @within			bhc:timer/scoreboard/displayed/
#
#
# @description		Mise à jour du scoreboard
#

# Équipe
data modify storage bhc:temp data.team set from entity @s data.team

# Rang
scoreboard players operation #temp_tens bhc.death.rank.number = @s bhc.death.rank.number
scoreboard players operation #temp_units bhc.death.rank.number = #temp_tens bhc.death.rank.number

execute store result storage bhc:temp data.rank_number int 1 run scoreboard players get #temp_tens bhc.death.rank.number

scoreboard players operation #temp_tens bhc.death.rank.number /= #10 uhc.data.numbers
execute store result storage bhc:temp data.rank_number_tens int 1 run scoreboard players get #temp_tens bhc.death.rank.number

scoreboard players operation #temp_tens bhc.death.rank.number *= #10 uhc.data.numbers
scoreboard players operation #temp_units bhc.death.rank.number -= #temp_tens bhc.death.rank.number
execute store result storage bhc:temp data.rank_number_units int 1 run scoreboard players get #temp_units bhc.death.rank.number

function bhc:timer/scoreboard/displayed/display with storage bhc:temp data
