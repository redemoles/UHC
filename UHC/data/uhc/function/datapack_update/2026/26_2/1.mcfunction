
#> uhc:datapack_update/2026/26_2/1
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 26.2.1
#

execute if score #bats uhc.scenario matches 1.. in uhc:lobby run summon minecraft:marker 0 0 0 {Tags:["uhc.scenario.bats"],CustomName:[{"text":"Bat"}]}
execute if score #blood_cycle uhc.scenario matches 1.. in uhc:lobby run summon minecraft:marker 0 0 0 {Tags:["uhc.scenario.blood_cycle"],CustomName:[{"text":"Blood Cycle"}]}
execute if score #blood_diamond uhc.scenario matches 1.. in uhc:lobby run summon minecraft:marker 0 0 0 {Tags:["uhc.scenario.blood_diamond"],CustomName:[{"text":"Blood Diamond"}]}
execute if score #go_to_hell uhc.scenario matches 1.. in uhc:lobby run summon minecraft:marker 0 0 0 {Tags:["uhc.scenario.go_to_hell"],CustomName:[{"text":"Go To Hell"}]}
execute if score #sky_high uhc.scenario matches 1.. in uhc:lobby run summon minecraft:marker 0 0 0 {Tags:["uhc.scenario.sky_high"],CustomName:[{"text":"Sky High"}]}

scoreboard players set #update uhc.data.update 26021
