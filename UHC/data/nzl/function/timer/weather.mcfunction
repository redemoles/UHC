
#> nzl:timer/weather
#
# @within			nzl:timer/tick
#
#
# @description		Function executed every tick
#

# Fin de pluie/orage
execute unless score @s nzl.weather.rain matches 1.. unless score @s nzl.weather.thunder matches 1.. run weather clear
execute if score @s nzl.weather.rain matches 1.. run weather rain
execute if score @s nzl.weather.thunder matches 1.. run weather thunder
