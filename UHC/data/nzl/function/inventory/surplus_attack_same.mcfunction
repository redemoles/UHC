
#> nzl:inventory/surplus_attack_same
#
# @within			nzl:inventory/missing
#
#
# @description		Function executed every tick
#

$clear @s minecraft:snowball[custom_data={nzl.item:1b,$(type):1b}] 1
$execute store result score @s nzl.player.inventory run clear @s snowball[custom_data={nzl.item:1b,$(type):1b}] 0
execute if score @s nzl.player.inventory matches 3.. run function nzl:inventory/surplus_attack_same
