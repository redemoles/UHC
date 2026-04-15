
#> uhc:in_game/tp/spawn/border_size/main
#
# @within			uhc:in_game/timer/tick
# 
#
# @description		Changement des points d'apparitions des équipes
#

# Données Worldborder
execute store result score #border_size uhc.data.temp run worldborder get
scoreboard players remove #border_size uhc.data.temp 1
scoreboard players operation #border_size uhc.data.temp /= #02 uhc.data.numbers

#execute if score #border_size uhc.data.temp matches 2001.. unless score #border_size_tp uhc.data.temp matches 2000 in uhc:lobby as @e[type=minecraft:marker,tag=UHC,distance=0..] run function uhc:in_game/tp/spawn/border_size/2000-
execute if score #border_size uhc.data.temp matches 1000.. unless score #border_size_tp uhc.data.temp matches 1000 in uhc:lobby as @e[type=minecraft:marker,tag=UHC,distance=0..] run function uhc:in_game/tp/spawn/border_size/1000-1999
execute if score #border_size uhc.data.temp matches 500..999 unless score #border_size_tp uhc.data.temp matches 500 in uhc:lobby as @e[type=minecraft:marker,tag=UHC,distance=0..] run function uhc:in_game/tp/spawn/border_size/500-999
execute if score #border_size uhc.data.temp matches 250..499 unless score #border_size_tp uhc.data.temp matches 250 in uhc:lobby as @e[type=minecraft:marker,tag=UHC,distance=0..] run function uhc:in_game/tp/spawn/border_size/250-499
execute if score #border_size uhc.data.temp matches 200..249 unless score #border_size_tp uhc.data.temp matches 200 in uhc:lobby as @e[type=minecraft:marker,tag=UHC,distance=0..] run function uhc:in_game/tp/spawn/border_size/200-249
execute if score #border_size uhc.data.temp matches 150..199 unless score #border_size_tp uhc.data.temp matches 150 in uhc:lobby as @e[type=minecraft:marker,tag=UHC,distance=0..] run function uhc:in_game/tp/spawn/border_size/150-199
execute if score #border_size uhc.data.temp matches 100..149 unless score #border_size_tp uhc.data.temp matches 100 in uhc:lobby as @e[type=minecraft:marker,tag=UHC,distance=0..] run function uhc:in_game/tp/spawn/border_size/100-149
execute if score #border_size uhc.data.temp matches 050..099 unless score #border_size_tp uhc.data.temp matches 050 in uhc:lobby as @e[type=minecraft:marker,tag=UHC,distance=0..] run function uhc:in_game/tp/spawn/border_size/050-099
execute if score #border_size uhc.data.temp matches 000..049 unless score #border_size_tp uhc.data.temp matches 000 in uhc:lobby as @e[type=minecraft:marker,tag=UHC,distance=0..] run function uhc:in_game/tp/spawn/border_size/000-049
