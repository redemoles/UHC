
#> nzl:inventory/missing
#
# @within			uhc:in_game/inventory/ban_item/root
#
#
# @description		Retire les items qui n'appartiennent pas au type du joueur
#

execute if score @s nzl.type.player matches 99 run data modify storage nzl type set value {type:'nzl.type.99'}
execute if score @s nzl.type.player matches 01 run data modify storage nzl type set value {type:'nzl.type.01'}
execute if score @s nzl.type.player matches 02 run data modify storage nzl type set value {type:'nzl.type.02'}
execute if score @s nzl.type.player matches 03 run data modify storage nzl type set value {type:'nzl.type.03'}
execute if score @s nzl.type.player matches 04 run data modify storage nzl type set value {type:'nzl.type.04'}
execute if score @s nzl.type.player matches 05 run data modify storage nzl type set value {type:'nzl.type.05'}
execute if score @s nzl.type.player matches 06 run data modify storage nzl type set value {type:'nzl.type.06'}
execute if score @s nzl.type.player matches 07 run data modify storage nzl type set value {type:'nzl.type.07'}
execute if score @s nzl.type.player matches 08 run data modify storage nzl type set value {type:'nzl.type.08'}
execute if score @s nzl.type.player matches 09 run data modify storage nzl type set value {type:'nzl.type.09'}
execute if score @s nzl.type.player matches 10 run data modify storage nzl type set value {type:'nzl.type.10'}
execute if score @s nzl.type.player matches 11 run data modify storage nzl type set value {type:'nzl.type.11'}
execute if score @s nzl.type.player matches 12 run data modify storage nzl type set value {type:'nzl.type.12'}
execute if score @s nzl.type.player matches 13 run data modify storage nzl type set value {type:'nzl.type.13'}
execute if score @s nzl.type.player matches 14 run data modify storage nzl type set value {type:'nzl.type.14'}
execute if score @s nzl.type.player matches 15 run data modify storage nzl type set value {type:'nzl.type.15'}
execute if score @s nzl.type.player matches 16 run data modify storage nzl type set value {type:'nzl.type.16'}
execute if score @s nzl.type.player matches 17 run data modify storage nzl type set value {type:'nzl.type.17'}
execute if score @s nzl.type.player matches 18 run data modify storage nzl type set value {type:'nzl.type.18'}

## Suppression des items appartenant à d'autres types
execute store result score @s nzl.player.inventory run clear @s minecraft:written_book 0
execute if score @s nzl.player.inventory matches 2.. run function nzl:inventory/surplus_book_other

execute store result score @s nzl.player.inventory run clear @s minecraft:snowball 0
execute if score @s nzl.player.inventory matches 3.. run function nzl:inventory/surplus_attack_other

## Suppression des items en surplus ou regive des items manquants
function nzl:inventory/number_book with storage nzl type
execute if score @s nzl.type.player matches ..99 if score @s nzl.player.inventory matches 2.. run function nzl:inventory/surplus_book_same with storage nzl type
execute if score @s nzl.type.level matches 00 if score @s nzl.player.inventory matches 0 run function nzl:inventory/book_--- with storage nzl ---_0_book
execute if score @s nzl.type.level matches 01 if score @s nzl.player.inventory matches 0 run function nzl:inventory/missing_book_1 with storage nzl type
execute if score @s nzl.type.level matches 02 if score @s nzl.player.inventory matches 0 run function nzl:inventory/missing_book_2 with storage nzl type
execute if score @s nzl.type.level matches 03 if score @s nzl.player.inventory matches 0 run function nzl:inventory/missing_book_3 with storage nzl type

function nzl:inventory/number_attack with storage nzl type
execute if score @s nzl.type.player matches ..99 if score @s nzl.player.inventory matches 3.. run function nzl:inventory/surplus_attack_same with storage nzl type
execute if score @s nzl.type.player matches ..99 if score @s nzl.player.inventory matches ..1 run function nzl:inventory/missing_attack with storage nzl type
