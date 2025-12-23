
#> bhc:timer/scoreboard/displayed/ironman
#
# @within			bhc:timer/scoreboard/displayed/
#
#
# @description		Mise à jour du scoreboard
#

# Équipe
data modify storage bhc:temp data.team set from entity @s data.team

# Rang
scoreboard players operation #temp_tens bhc.ironman.rank = @s bhc.ironman.rank
scoreboard players operation #temp_units bhc.ironman.rank = #temp_tens bhc.ironman.rank

execute store result storage bhc:temp data.rank_number int 1 run scoreboard players get #temp_tens bhc.ironman.rank

scoreboard players operation #temp_tens bhc.ironman.rank /= #10 uhc.data.numbers
execute store result storage bhc:temp data.rank_number_tens int 1 run scoreboard players get #temp_tens bhc.ironman.rank

scoreboard players operation #temp_tens bhc.ironman.rank *= #10 uhc.data.numbers
scoreboard players operation #temp_units bhc.ironman.rank -= #temp_tens bhc.ironman.rank
execute store result storage bhc:temp data.rank_number_units int 1 run scoreboard players get #temp_units bhc.ironman.rank

function bhc:timer/scoreboard/displayed/display with storage bhc:temp data
