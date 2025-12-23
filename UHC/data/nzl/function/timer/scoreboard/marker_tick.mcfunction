
#> nzl:timer/scoreboard/marker_tick
#
# @within			nzl:timer/second
#
#
# @description		Function executed every tick
#

# Marker name
data modify storage nzl:temp input set value {name:""}
data modify storage nzl:temp input set from entity @s data
function nzl:timer/scoreboard/marker_reset with storage nzl:temp input
execute unless score #nbr_marker nzl.type.display matches 16.. run function nzl:timer/scoreboard/marker_name with storage nzl:temp input
execute if score #nbr_marker nzl.type.display matches 16.. if score #second_base_10 nzl.data matches 0..4 if score @s nzl.type.player matches 01..09 run function nzl:timer/scoreboard/marker_name with storage nzl:temp input
execute if score #nbr_marker nzl.type.display matches 16.. if score #second_base_10 nzl.data matches 5..9 if score @s nzl.type.player matches 10..18 run function nzl:timer/scoreboard/marker_name with storage nzl:temp input
kill @s[scores={nzl.type.available=0}]
