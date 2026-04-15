
#> bhc:scenario/02/target/randomizer/countdown
#
# @within			bhc:timer/minute
#
#
# @description		Changement des cibles
#

scoreboard players remove #tracker_ennemies uhc.data.temp 1
execute if score #tracker_ennemies uhc.data.temp matches 1.. unless score #tracker_ennemies uhc.data.temp matches 121.. unless score #tracker_ennemies uhc.data.temp matches 91..119 unless score #tracker_ennemies uhc.data.temp matches 61..89 unless score #tracker_ennemies uhc.data.temp matches 31..59 unless score #tracker_ennemies uhc.data.temp matches 21..29 unless score #tracker_ennemies uhc.data.temp matches 11..19 unless score #tracker_ennemies uhc.data.temp matches 06..09 run function uhc:translation/bhc/02_viking_era/target_randomizer_countdown
execute if score #tracker_ennemies uhc.data.temp matches 0 run function bhc:scenario/02/target/randomizer/main
