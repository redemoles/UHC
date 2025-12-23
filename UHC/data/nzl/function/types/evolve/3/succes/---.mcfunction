
#> nzl:types/evolve/3/succes/---
#
# @within			nzl:timer/minute
#
#
# @description		Donne ce type au joueur qui l'a sélectionné
#

## Message Niveau 3 - Stade Lutte


$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(statistiques)]}},{"text":"################################\n","color":"#7FBF9F","bold":true,"obfuscated":true},{"text":"Malédiction","color":"#7FBF9F","bold":true},{"text":" n'a plus de PP !\nTu es sous ","color":"#BFDFCF","bold":true},{"text":"Lutte","color":"#7FBF9F","bold":true},{"text":" !\n                                                \n","color":"#BFDFCF","bold":true},{"text":"Type : ","color":"#BFDFCF","bold":true},{"text":"???                                ","color":"#7FBF9F","bold":true},{"text":"\nStade : ","color":"#BFDFCF","bold":true},{"text":"Lutte                                    \n                                                ","color":"#7FBF9F","bold":true}]
$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(attaques)]}},{"text":"TALENT :","color":"#BFDFCF","bold":true},{"text":" [","color":"#7FBF9F","bold":true},{"text":"MALÉDICTION","color":"#3FCFFF","bold":true},{"text":"]                         ","color":"#7FBF9F","bold":true},{"text":"\nATTAQUE :","color":"#BFDFCF","bold":true},{"text":" [","color":"#7FBF9F","bold":true},{"text":"TREMPETTE","color":"#FF3F3F","bold":true},{"text":"]                         \n","color":"#7FBF9F","bold":true},{"text":"################################\n","color":"#7FBF9F","bold":true,"obfuscated":true}]

## Items / Effets
# Personnel
scoreboard players set @s nzl.type.level 3

scoreboard players set @s nzl.type.evolve 0







# Points de vie
attribute @s minecraft:max_health base set 6
