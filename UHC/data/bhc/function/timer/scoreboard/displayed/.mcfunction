
#> bhc:timer/scoreboard/displayed/
#
# @within			bhc:timer/scoreboard/marker_name
#
#
# @description		Mise à jour du scoreboard
#

execute unless score #sb bhc.data.temp matches 01.. run return run function bhc:timer/scoreboard/displayed/total with entity @s data
execute if score #sb bhc.data.temp matches 01..02 run return run function bhc:timer/scoreboard/displayed/stepa with entity @s data
execute if score #sb bhc.data.temp matches 04..05 run return run function bhc:timer/scoreboard/displayed/stepb with entity @s data
execute if score #sb bhc.data.temp matches 07..08 run return run function bhc:timer/scoreboard/displayed/kills with entity @s data
execute if score #sb bhc.data.temp matches 10..11 run return run function bhc:timer/scoreboard/displayed/death with entity @s data
execute if score #sb bhc.data.temp matches 12 run return run function bhc:timer/scoreboard/displayed/ironman with entity @s data
execute if score #sb bhc.data.temp matches 13 run return run function bhc:timer/scoreboard/displayed/bingos with entity @s data
execute if score #sb bhc.data.temp matches 14 run return run function bhc:timer/scoreboard/displayed/damage_dealt with entity @s data
