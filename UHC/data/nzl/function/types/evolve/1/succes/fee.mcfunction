
#> nzl:types/evolve/1/succes/fee
#
# @within			nzl:types/evolve/1/disponible/fee
#
#
# @description		Donne ce type au joueur qui l'a sélectionné
#

## Message
tellraw @a [{"text":"","obfuscated":false,"bold":true},{"text":"################################\n","color":"#2F5FBF","obfuscated":true},{"selector":"@s","bold":true},{"text":" gagne le type ","color":"#3F9FFF","bold":true},{"text":"Fee","color":"#FFBFFF","bold":true},{"text":" !","color":"#3F9FFF","bold":true},{"text":"\n################################\n","color":"#2F5FBF","obfuscated":true}]

$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(statistiques)]}},{"text":"################################\n","color":"#FFBFFF","bold":true,"obfuscated":true},{"text":"Tu as débloqué le type ","color":"#FFDFFF","bold":true},{"text":"FEE","color":"#FFBFFF","bold":true},{"text":" !\n","color":"#FFDFFF","bold":true},{"text":"Stade : ","color":"#FFDFFF","bold":true},{"text":"Base                                \n                                                ","color":"#FFBFFF","bold":true}]
$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(attaques)]}},{"text":"TALENT :","color":"#FFDFFF","bold":true},{"text":" [","color":"#FFBFFF","bold":true},{"text":"VAMPIBAISER","color":"#3FCFFF","bold":true},{"text":"]                         ","color":"#FFBFFF","bold":true},{"text":"\nATTAQUE :","color":"#FFDFFF","bold":true},{"text":" [","color":"#FFBFFF","bold":true},{"text":"CHAMP BRUMEUX","color":"#FF3F3F","bold":true},{"text":"]                         \n","color":"#FFBFFF","bold":true},{"text":"################################\n","color":"#FFBFFF","bold":true,"obfuscated":true}]

## Items / Effets
# Personnel
scoreboard players set @s nzl.type.level 1
tag @s add nzl.type.06
scoreboard players set @s nzl.type.evolve 0
scoreboard players set @s[scores={nzl.type.select=06}] nzl.type.player 06
scoreboard players set @s nzl.sound.evolve 1
attribute @s minecraft:scale base set 0.65
# Équipe
scoreboard players operation #team uhc.id.team = @s uhc.id.team
tag @e[type=minecraft:marker,tag=UHC,predicate=uhc:id/team] add nzl.type.06

# Points de vie
attribute @s minecraft:max_health base set 18


# Clear Items
clear @s minecraft:diamond 1
clear @s minecraft:bow[damage=0] 1
clear @s minecraft:amethyst_shard 1
clear @s minecraft:air 0
clear @s minecraft:air 0
experience add @s -15 levels
clear @s minecraft:written_book

## Réduction du nombre d'emplacement pour ce type
scoreboard players remove @n[type=minecraft:marker,tag=nzl.type,tag=06] nzl.type.available 1
scoreboard players remove #type_06 nzl.type.available 1

## Préfix
function nzl:types/prefix/fee
