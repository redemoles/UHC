
#> nzl:types/evolve/1/succes/eau
#
# @within			nzl:types/evolve/1/disponible/eau
#
#
# @description		Donne ce type au joueur qui l'a sélectionné
#

## Message
tellraw @a [{"text":"","obfuscated":false,"bold":true},{"text":"################################\n","color":"#2F5FBF","obfuscated":true},{"selector":"@s","bold":true},{"text":" gagne le type ","color":"#3F9FFF","bold":true},{"text":"Eau","color":"#3F9FFF","bold":true},{"text":" !","color":"#3F9FFF","bold":true},{"text":"\n################################\n","color":"#2F5FBF","obfuscated":true}]

$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(statistiques)]}},{"text":"################################\n","color":"#3F9FFF","bold":true,"obfuscated":true},{"text":"Tu as débloqué le type ","color":"#9FCFFF","bold":true},{"text":"EAU","color":"#3F9FFF","bold":true},{"text":" !\n","color":"#9FCFFF","bold":true},{"text":"Stade : ","color":"#9FCFFF","bold":true},{"text":"Base                                \n                                                ","color":"#3F9FFF","bold":true}]
$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(attaques)]}},{"text":"TALENT :","color":"#9FCFFF","bold":true},{"text":" [","color":"#3F9FFF","bold":true},{"text":"SURF","color":"#3FCFFF","bold":true},{"text":"]                         ","color":"#3F9FFF","bold":true},{"text":"\nATTAQUE :","color":"#9FCFFF","bold":true},{"text":" [","color":"#3F9FFF","bold":true},{"text":"CRACHIN","color":"#FF3F3F","bold":true},{"text":"]                         \n","color":"#3F9FFF","bold":true},{"text":"################################\n","color":"#3F9FFF","bold":true,"obfuscated":true}]

## Items / Effets
# Personnel
scoreboard players set @s nzl.type.level 1
tag @s add nzl.type.04
scoreboard players set @s nzl.type.evolve 0
scoreboard players set @s[scores={nzl.type.select=04}] nzl.type.player 04
scoreboard players set @s nzl.sound.evolve 1

# Équipe
scoreboard players operation #team uhc.id.team = @s uhc.id.team
tag @e[type=marker,predicate=uhc:id/team] add nzl.type.04

# Minage sous l'eau
attribute @s minecraft:submerged_mining_speed base set 0.6


# Clear Items
clear @s minecraft:diamond 1
clear @s minecraft:fishing_rod[damage=0] 1
clear @s minecraft:axolotl_bucket 1
clear @s minecraft:kelp 32
clear @s minecraft:air 0
experience add @s -15 levels
clear @s minecraft:written_book

## Réduction du nombre d'emplacement pour ce type
scoreboard players remove @n[type=marker,tag=nzl.type,tag=04] nzl.type.available 1
scoreboard players remove #type_04 nzl.type.available 1

## Préfix
function nzl:types/prefix/eau
