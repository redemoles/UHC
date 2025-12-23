
#> nzl:types/evolve/1/succes/combat
#
# @within			nzl:types/evolve/1/disponible/combat
#
#
# @description		Donne ce type au joueur qui l'a sélectionné
#

## Message
tellraw @a [{"text":"","obfuscated":false,"bold":true},{"text":"################################\n","color":"#2F5FBF","obfuscated":true},{"selector":"@s","bold":true},{"text":" gagne le type ","color":"#3F9FFF","bold":true},{"text":"Combat","color":"#7F3F00","bold":true},{"text":" !","color":"#3F9FFF","bold":true},{"text":"\n################################\n","color":"#2F5FBF","obfuscated":true}]

$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(statistiques)]}},{"text":"################################\n","color":"#7F3F00","bold":true,"obfuscated":true},{"text":"Tu as débloqué le type ","color":"#BF9F7F","bold":true},{"text":"COMBAT","color":"#7F3F00","bold":true},{"text":" !\n","color":"#BF9F7F","bold":true},{"text":"Stade : ","color":"#BF9F7F","bold":true},{"text":"Base                                \n                                                ","color":"#7F3F00","bold":true}]
$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(attaques)]}},{"text":"TALENT :","color":"#BF9F7F","bold":true},{"text":" [","color":"#7F3F00","bold":true},{"text":"DOUBLE PIED","color":"#3FCFFF","bold":true},{"text":"]                         ","color":"#7F3F00","bold":true},{"text":"\nATTAQUE :","color":"#BF9F7F","bold":true},{"text":" [","color":"#7F3F00","bold":true},{"text":"DYNAMO-POING","color":"#FF3F3F","bold":true},{"text":"]                         \n","color":"#7F3F00","bold":true},{"text":"################################\n","color":"#7F3F00","bold":true,"obfuscated":true}]

## Items / Effets
# Personnel
scoreboard players set @s nzl.type.level 1
tag @s add nzl.type.02
scoreboard players set @s nzl.type.evolve 0
scoreboard players set @s[scores={nzl.type.select=02}] nzl.type.player 02
scoreboard players set @s nzl.sound.evolve 1

# Équipe
scoreboard players operation #team uhc.id.team = @s uhc.id.team
tag @e[type=marker,predicate=uhc:id_team] add nzl.type.02

# Points de vie
attribute @s minecraft:max_health base set 16


# Clear Items
clear @s minecraft:diamond 1
clear @s minecraft:iron_sword[damage=0] 1
clear @s minecraft:leather_chestplate[damage=0] 1
clear @s minecraft:air 0
clear @s minecraft:air 0
experience add @s -15 levels
clear @s minecraft:written_book

## Réduction du nombre d'emplacement pour ce type
scoreboard players remove @n[type=marker,tag=nzl.type,tag=02] nzl.type.available 1
scoreboard players remove #type_02 nzl.type.available 1

## Préfix
function nzl:types/prefix/combat

# Tag pour Advancement de son Talent
tag @s add nzl.poing.1
