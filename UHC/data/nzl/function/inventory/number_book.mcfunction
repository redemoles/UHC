
#> nzl:inventory/number_book
#
# @within			nzl:inventory/missing
#
#
# @description		Retire les items qui n'appartiennent pas au type du joueur
#

$execute store result score @s nzl.player.inventory run clear @s minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] 0
