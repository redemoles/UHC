
#> nzl:types/evolve/1/succes/---
#
# @within			nzl:timer/minute
#
#
# @description		Donne ce type au joueur qui l'a sélectionné
#

## Message Niveau 1 - Stade Malédiction +1


$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(statistiques)]}},{"text":"################################\n","color":"#7FBF9F","bold":true,"obfuscated":true},{"text":"Malédiction","color":"#7FBF9F","bold":true},{"text":" vient de se déclencher !\nLa capacité a modifié vos statistiques.\n                                                \n","color":"#BFDFCF","bold":true},{"text":"Type : ","color":"#BFDFCF","bold":true},{"text":"???                                ","color":"#7FBF9F","bold":true},{"text":"\nStade : ","color":"#BFDFCF","bold":true},{"text":"Malédiction +1                            \n                                                ","color":"#7FBF9F","bold":true}]
$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(attaques)]}},{"text":"TALENT :","color":"#BFDFCF","bold":true},{"text":" [","color":"#7FBF9F","bold":true},{"text":"MALÉDICTION","color":"#3FCFFF","bold":true},{"text":"]                         ","color":"#7FBF9F","bold":true},{"text":"\nATTAQUE :","color":"#BFDFCF","bold":true},{"text":" [","color":"#7FBF9F","bold":true},{"text":"TREMPETTE","color":"#FF3F3F","bold":true},{"text":"]                         \n","color":"#7FBF9F","bold":true},{"text":"################################\n","color":"#7FBF9F","bold":true,"obfuscated":true}]

## Items / Effets
# Personnel
scoreboard players set @s nzl.type.level 1

scoreboard players set @s nzl.type.evolve 0







# Points de vie
attribute @s minecraft:max_health base set 16

