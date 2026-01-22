
#> uhc:kit
#
# @within			uhc:kit
#
#
# @description		Kit de meet-up, commande manuelle
#

gamerule minecraft:spawn_monsters false
clear @a[tag=uhc.player]

## Kit de stuff pour Build UHC
# Slot 1 à 9
give @a[tag=uhc.player] minecraft:diamond_sword[enchantments={"minecraft:sharpness":3},unbreakable={}]
give @a[tag=uhc.player] minecraft:bow[enchantments={"minecraft:power":2},unbreakable={}]
give @a[tag=uhc.player] minecraft:golden_carrot 64

give @a[tag=uhc.player] minecraft:oak_log 64
give @a[tag=uhc.player] minecraft:water_bucket
give @a[tag=uhc.player] minecraft:water_bucket

give @a[tag=uhc.player] minecraft:lava_bucket
give @a[tag=uhc.player] minecraft:lava_bucket
give @a[tag=uhc.player] minecraft:golden_apple 12

# Inventaire
give @a[tag=uhc.player] minecraft:diamond_helmet[enchantments={"minecraft:protection":2},unbreakable={}]
give @a[tag=uhc.player] minecraft:diamond_chestplate[enchantments={"minecraft:protection":2},unbreakable={}]
give @a[tag=uhc.player] minecraft:iron_leggings[enchantments={"minecraft:protection":2},unbreakable={}]
give @a[tag=uhc.player] minecraft:diamond_boots[enchantments={"minecraft:protection":2},unbreakable={}]

give @a[tag=uhc.player] minecraft:arrow 64
give @a[tag=uhc.player] minecraft:diamond_pickaxe[enchantments={"minecraft:efficiency":2},unbreakable={}]
give @a[tag=uhc.player] minecraft:diamond_axe[enchantments={"minecraft:efficiency":2},unbreakable={}]
give @a[tag=uhc.player] minecraft:diamond_shovel[enchantments={"minecraft:efficiency":2},unbreakable={}]
give @a[tag=uhc.player] minecraft:shield

## Réduction Résistance
execute if score #pve uhc.data.temp matches 1.. run scoreboard players set #pve uhc.data.temp 1

## TP style meet-up
scoreboard players enable @s uhc.meetup.activate
tellraw @s [{"text":"Cliquez ici pour forcer le meet-up","color":"#3FE7FF","click_event":{"action":"run_command","command":"/trigger uhc.meetup.activate set 1"}},{"text":"\n"}]
