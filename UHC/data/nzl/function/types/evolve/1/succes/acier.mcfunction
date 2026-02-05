
#> nzl:types/evolve/1/succes/acier
#
# @within			nzl:types/evolve/1/disponible/acier
#
#
# @description		Donne ce type au joueur qui l'a sélectionné
#

## Message
tellraw @a [{"text":"","obfuscated":false,"bold":true},{"text":"################################\n","color":"#2F5FBF","obfuscated":true},{"selector":"@s","bold":true},{"text":" gagne le type ","color":"#3F9FFF","bold":true},{"text":"Acier","color":"#BFBFBF","bold":true},{"text":" !","color":"#3F9FFF","bold":true},{"text":"\n################################\n","color":"#2F5FBF","obfuscated":true}]

$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(statistiques)]}},{"text":"################################\n","color":"#BFBFBF","bold":true,"obfuscated":true},{"text":"Tu as débloqué le type ","color":"#DFDFDF","bold":true},{"text":"ACIER","color":"#BFBFBF","bold":true},{"text":" !\n","color":"#DFDFDF","bold":true},{"text":"Stade : ","color":"#DFDFDF","bold":true},{"text":"Base                                \n                                                ","color":"#BFBFBF","bold":true}]
$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(attaques)]}},{"text":"TALENT :","color":"#DFDFDF","bold":true},{"text":" [","color":"#BFBFBF","bold":true},{"text":"ÉPINE DE FER","color":"#3FCFFF","bold":true},{"text":"]                         ","color":"#BFBFBF","bold":true},{"text":"\nATTAQUE :","color":"#DFDFDF","bold":true},{"text":" [","color":"#BFBFBF","bold":true},{"text":"MUR DE FER","color":"#FF3F3F","bold":true},{"text":"]                         \n","color":"#BFBFBF","bold":true},{"text":"################################\n","color":"#BFBFBF","bold":true,"obfuscated":true}]

## Items / Effets
# Personnel
scoreboard players set @s nzl.type.level 1
tag @s add nzl.type.01
scoreboard players set @s nzl.type.evolve 0
scoreboard players set @s[scores={nzl.type.select=01}] nzl.type.player 01
scoreboard players set @s nzl.sound.evolve 1

# Équipe
scoreboard players operation #team uhc.id.team = @s uhc.id.team
tag @e[type=marker,predicate=uhc:id/team] add nzl.type.01

# Points de vie
attribute @s minecraft:max_health base set 16


# Clear Items
clear @s minecraft:diamond 1
clear @s minecraft:iron_pickaxe[damage=0] 1
clear @s minecraft:shield[damage=0] 1
clear @s minecraft:iron_block 3
clear @s minecraft:air 0
experience add @s -15 levels
clear @s minecraft:written_book

## Réduction du nombre d'emplacement pour ce type
scoreboard players remove @n[type=marker,tag=nzl.type,tag=01] nzl.type.available 1
scoreboard players remove #type_01 nzl.type.available 1

## Préfix
function nzl:types/prefix/acier
