
#> nzl:inventory/number_attack
#
# @within			nzl:inventory/missing
#
#
# @description		Retire les items qui n'appartiennent pas au type du joueur
#

$execute store result score @s nzl.player.inventory run clear @s snowball[custom_data={nzl.item:1b,$(type):1b}] 0
