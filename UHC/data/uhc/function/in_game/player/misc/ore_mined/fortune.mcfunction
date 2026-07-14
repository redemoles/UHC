
#> uhc:in_game/player/misc/ore_mined/fortune
#
# @within			uhc:in_game/player/misc/ore_mined/*_main
#
#
# @description		Fortune
#

scoreboard players set #random_fortune uhc.data.temp 1
execute if items entity @s weapon.mainhand *[minecraft:enchantments={"minecraft:fortune":1}] store result score #random_fortune uhc.data.temp run random value 1..3
execute if items entity @s weapon.mainhand *[minecraft:enchantments={"minecraft:fortune":2}] store result score #random_fortune uhc.data.temp run random value 1..4
execute if items entity @s weapon.mainhand *[minecraft:enchantments={"minecraft:fortune":3}] store result score #random_fortune uhc.data.temp run random value 1..5

scoreboard players set #count uhc.data.temp 1
execute if score #random_fortune uhc.data.temp matches 3 run scoreboard players set #count uhc.data.temp 2
execute if score #random_fortune uhc.data.temp matches 4 run scoreboard players set #count uhc.data.temp 3
execute if score #random_fortune uhc.data.temp matches 5 run scoreboard players set #count uhc.data.temp 4

execute store result storage uhc:temp fortune.random int 1 run scoreboard players get #count uhc.data.temp
