
#> nzl:types/evolve/1/succes/dragon
#
# @within			nzl:types/evolve/1/disponible/dragon
#
#
# @description		Donne ce type au joueur qui l'a sélectionné
#

## Message
tellraw @a [{"text":"","obfuscated":false,"bold":true},{"text":"################################\n","color":"#2F5FBF","obfuscated":true},{"selector":"@s","bold":true},{"text":" gagne le type ","color":"#3F9FFF","bold":true},{"text":"Dragon","color":"#7F5FDF","bold":true},{"text":" !","color":"#3F9FFF","bold":true},{"text":"\n################################\n","color":"#2F5FBF","obfuscated":true}]

$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(statistiques)]}},{"text":"################################\n","color":"#7F5FDF","bold":true,"obfuscated":true},{"text":"Tu as débloqué le type ","color":"#BFAFEF","bold":true},{"text":"DRAGON","color":"#7F5FDF","bold":true},{"text":" !\n","color":"#BFAFEF","bold":true},{"text":"Stade : ","color":"#BFAFEF","bold":true},{"text":"Base                                \n                                                ","color":"#7F5FDF","bold":true}]
$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(attaques)]}},{"text":"TALENT :","color":"#BFAFEF","bold":true},{"text":" [","color":"#7F5FDF","bold":true},{"text":"DÉBUT CALME","color":"#3FCFFF","bold":true},{"text":"]                         ","color":"#7F5FDF","bold":true},{"text":"\nATTAQUE :","color":"#BFAFEF","bold":true},{"text":" [","color":"#7F5FDF","bold":true},{"text":"DANSE-DRACO","color":"#FF3F3F","bold":true},{"text":"]                         \n","color":"#7F5FDF","bold":true},{"text":"################################\n","color":"#7F5FDF","bold":true,"obfuscated":true}]

## Items / Effets
# Personnel
scoreboard players set @s nzl.type.level 1
tag @s add nzl.type.03
scoreboard players set @s nzl.type.evolve 0
scoreboard players set @s[scores={nzl.type.select=03}] nzl.type.player 03
scoreboard players set @s nzl.sound.evolve 1
scoreboard players set @s nzl.dragon.malus 0
# Équipe
scoreboard players operation #team uhc.id.team = @s uhc.id.team
tag @e[type=marker,predicate=uhc:id/team] add nzl.type.03

# Points de vie
attribute @s minecraft:max_health base set 18


# Clear Items
clear @s minecraft:diamond 1
clear @s minecraft:gold_block 1
clear @s minecraft:emerald 1
clear @s minecraft:air 0
clear @s minecraft:air 0
experience add @s -15 levels
clear @s minecraft:written_book

## Réduction du nombre d'emplacement pour ce type
scoreboard players remove @n[type=marker,tag=nzl.type,tag=03] nzl.type.available 1
scoreboard players remove #type_03 nzl.type.available 1

## Préfix
function nzl:types/prefix/dragon
