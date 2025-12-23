
#> nzl:inventory/missing_book_1
#
# @within			nzl:inventory/missing
#
#
# @description		Recherche le type du joueur pour lui donner son livre d'évolution
#

$execute unless items entity @s[scores={nzl.type.player=99}] container.* minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] run function nzl:inventory/book_--- with storage nzl ---_0_book
$execute unless items entity @s[scores={nzl.type.player=01}] container.* minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] run function nzl:inventory/book with storage nzl acier_1_book
$execute unless items entity @s[scores={nzl.type.player=02}] container.* minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] run function nzl:inventory/book with storage nzl combat_1_book
$execute unless items entity @s[scores={nzl.type.player=03}] container.* minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] run function nzl:inventory/book with storage nzl dragon_1_book
$execute unless items entity @s[scores={nzl.type.player=04}] container.* minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] run function nzl:inventory/book with storage nzl eau_1_book
$execute unless items entity @s[scores={nzl.type.player=05}] container.* minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] run function nzl:inventory/book with storage nzl electrique_1_book
$execute unless items entity @s[scores={nzl.type.player=06}] container.* minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] run function nzl:inventory/book with storage nzl fee_1_book
$execute unless items entity @s[scores={nzl.type.player=07}] container.* minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] run function nzl:inventory/book with storage nzl feu_1_book
$execute unless items entity @s[scores={nzl.type.player=08}] container.* minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] run function nzl:inventory/book with storage nzl glace_1_book
$execute unless items entity @s[scores={nzl.type.player=09}] container.* minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] run function nzl:inventory/book with storage nzl insecte_1_book
$execute unless items entity @s[scores={nzl.type.player=10}] container.* minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] run function nzl:inventory/book with storage nzl normal_1_book
$execute unless items entity @s[scores={nzl.type.player=11}] container.* minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] run function nzl:inventory/book with storage nzl plante_1_book
$execute unless items entity @s[scores={nzl.type.player=12}] container.* minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] run function nzl:inventory/book with storage nzl poison_1_book
$execute unless items entity @s[scores={nzl.type.player=13}] container.* minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] run function nzl:inventory/book with storage nzl psy_1_book
$execute unless items entity @s[scores={nzl.type.player=14}] container.* minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] run function nzl:inventory/book with storage nzl roche_1_book
$execute unless items entity @s[scores={nzl.type.player=15}] container.* minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] run function nzl:inventory/book with storage nzl sol_1_book
$execute unless items entity @s[scores={nzl.type.player=16}] container.* minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] run function nzl:inventory/book with storage nzl spectre_1_book
$execute unless items entity @s[scores={nzl.type.player=17}] container.* minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] run function nzl:inventory/book with storage nzl tenebres_1_book
$execute unless items entity @s[scores={nzl.type.player=18}] container.* minecraft:written_book[custom_data={nzl.item:1b,$(type):1b}] run function nzl:inventory/book with storage nzl vol_1_book
stopsound @a[distance=..5] player minecraft:entity.item.pickup
