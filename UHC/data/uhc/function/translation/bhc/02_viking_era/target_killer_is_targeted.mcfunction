
#> uhc:translation/bhc/02_viking_era/target_killer_is_targeted
#
# @within			bhc:scenario/02/target/death/killer/is_targeted
#
#
# @description		Annonce dans le chat de la réalisation d'une ligne
#

## FRA - Français / French
execute as @a[predicate=!uhc:id/team,tag=uhc.spec,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"Assassin tué","color":"#CFCFCF","italic":true}]
execute as @a[predicate=uhc:id/team,scores={uhc.player.lang=061801}] run tellraw @s [{"text":"+5","color":"#3FE7FF","bold":true},{"text":" points ","color":"#00C3DF","bold":false},{"text":"[","color":"#FFFFFF"},{"text":"Kills","color":"#3FE7FF"},{"text":"] ","color":"#FFFFFF"},{"text":"Assassin tué","color":"#CFCFCF","italic":true,"bold":false}]

## ENG - English
execute as @a[predicate=!uhc:id/team,tag=uhc.spec,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"Assassin killed","color":"#CFCFCF","italic":true}]
execute as @a[predicate=uhc:id/team,scores={uhc.player.lang=051407}] run tellraw @s [{"text":"+5","color":"#3FE7FF","bold":true},{"text":" points ","color":"#00C3DF","bold":false},{"text":"[","color":"#FFFFFF"},{"text":"Kills","color":"#3FE7FF"},{"text":"] ","color":"#FFFFFF"},{"text":"Assassin killed","color":"#CFCFCF","italic":true,"bold":false}]
