
#> uhc:start/forceload
#
# @within			uhc:start/countdown/start
#
#
# @description		Forceload team spawns et middle
#

## Forceload des spawns et du centre
# Middle
forceload add 127 127 -127 -127
# Spawns 01-04
forceload add 720 720
forceload add 720 -720
forceload add -720 720
forceload add -720 -720
# Spawns 05-08
forceload add 840 360
forceload add 840 -360
forceload add -840 360
forceload add -840 -360
# Spawns 09-12
forceload add 360 840
forceload add 360 -840
forceload add -360 840
forceload add -360 -840
# Spawns 13-16
forceload add 960 0
forceload add -960 0
forceload add 0 960
forceload add 0 -960
# Spawns 17-20
forceload add 900 180
forceload add 900 -180
forceload add -900 180
forceload add -900 -180
# Spawns 21-24
forceload add 780 540
forceload add 780 -540
forceload add -780 540
forceload add -780 -540
# Spawns 25-28
forceload add 180 900
forceload add 180 -900
forceload add -180 900
forceload add -180 -900
# Spawns 29-32
forceload add 540 780
forceload add 540 -780
forceload add -540 780
forceload add -540 -780

execute if score #enchanting_setup uhc.scenario matches 1 run summon marker 0 100 0 {Tags:["uhc.scenario.enchanting_setup"]}
execute if score #enchanting_setup uhc.scenario matches 1 as @n[type=marker,nbt={Tags:["uhc.scenario.enchanting_setup"]}] run function uhc:start/scenario/enchanting_setup/
