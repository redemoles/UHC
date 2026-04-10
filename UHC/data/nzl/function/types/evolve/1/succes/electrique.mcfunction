
#> nzl:types/evolve/1/succes/electrique
#
# @within			nzl:types/evolve/1/disponible/electrique
#
#
# @description		Donne ce type au joueur qui l'a sélectionné
#

## Message
tellraw @a [{"text":"","obfuscated":false,"bold":true},{"text":"################################\n","color":"#2F5FBF","obfuscated":true},{"selector":"@s","bold":true},{"text":" gagne le type ","color":"#3F9FFF","bold":true},{"text":"Electrique","color":"#FFDF00","bold":true},{"text":" !","color":"#3F9FFF","bold":true},{"text":"\n################################\n","color":"#2F5FBF","obfuscated":true}]

$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(statistiques)]}},{"text":"################################\n","color":"#FFDF00","bold":true,"obfuscated":true},{"text":"Tu as débloqué le type ","color":"#FFEF7F","bold":true},{"text":"ELECTRIQUE","color":"#FFDF00","bold":true},{"text":" !\n","color":"#FFEF7F","bold":true},{"text":"Stade : ","color":"#FFEF7F","bold":true},{"text":"Base                                \n                                                ","color":"#FFDF00","bold":true}]
$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(attaques)]}},{"text":"TALENT :","color":"#FFEF7F","bold":true},{"text":" [","color":"#FFDF00","bold":true},{"text":"STATIK","color":"#3FCFFF","bold":true},{"text":"]                         ","color":"#FFDF00","bold":true},{"text":"\nATTAQUE :","color":"#FFEF7F","bold":true},{"text":" [","color":"#FFDF00","bold":true},{"text":"FATAL-FOUDRE","color":"#FF3F3F","bold":true},{"text":"]                         \n","color":"#FFDF00","bold":true},{"text":"################################\n","color":"#FFDF00","bold":true,"obfuscated":true}]

## Items / Effets
# Personnel
scoreboard players set @s nzl.type.level 1
tag @s add nzl.type.05
scoreboard players set @s nzl.type.evolve 0
scoreboard players set @s[scores={nzl.type.select=05}] nzl.type.player 05
scoreboard players set @s nzl.sound.evolve 1

# Équipe
scoreboard players operation #team uhc.id.team = @s uhc.id.team
tag @e[type=minecraft:marker,tag=UHC,predicate=uhc:id/team] add nzl.type.05

# Points de vie
attribute @s minecraft:max_health base set 18


# Clear Items
clear @s minecraft:diamond 1
clear @s minecraft:leather_boots[damage=0] 1
clear @s minecraft:redstone 48
clear @s minecraft:lightning_rod 1
clear @s minecraft:air 0
experience add @s -15 levels
clear @s minecraft:written_book

## Réduction du nombre d'emplacement pour ce type
scoreboard players remove @n[type=minecraft:marker,tag=nzl.type,tag=05] nzl.type.available 1
scoreboard players remove #type_05 nzl.type.available 1

## Préfix
function nzl:types/prefix/electrique

# Tag pour Advancement de son Talent
tag @s add nzl.level.1
