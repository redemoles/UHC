
#> uhc:load
#
# @within			#minecraft:load
#
#
# @description		Function executed when the datapack is loaded
#

function uhc:pre_game/new_map/load

# Privilège d'host
tag @s add host
tag @s add uhc.host
execute if score #update uhc.data.update matches 0.. run function uhc:datapack_update/list

# Affichage du message aux hosts
tellraw @a[tag=uhc.host,scores={uhc.player.lang=061801}] [{"text":"[","color":"#6F6F6F","click_event":{"action":"run_command","command":"/gamerule minecraft:send_command_feedback true"}},{"text":"UHC 26.3.0","color":"#FFE73F"},{"text":" - "},{"text":"pour ","color":"#E7E7E7"},{"text":"MC 1.21.11","color":"#3FE7FF"},{"text":" - "},{"text":"par ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":"\n/tag [pseudo] add/remove host >","color":"#CFCFCF"},{"text":" Accès au menu host","color":"#FFFFFF"},{"text":"\n/function uhc:reset >","color":"#CFCFCF"},{"text":" Charger le datapack / réinitialiser une partie","color":"#FFFFFF"},{"text":"\n/function uhc:reset/full >","color":"#CFCFCF"},{"text":" Réinitialisation complète du datapack\n","color":"#FFFFFF"}]
tellraw @a[tag=uhc.host,scores={uhc.player.lang=051407}] [{"text":"[","color":"#6F6F6F","click_event":{"action":"run_command","command":"/gamerule minecraft:send_command_feedback true"}},{"text":"UHC 26.3.0","color":"#FFE73F"},{"text":" - "},{"text":"for ","color":"#E7E7E7"},{"text":"MC 1.21.11","color":"#3FE7FF"},{"text":" - "},{"text":"by ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":"\n/tag [nickname] add/remove host >","color":"#CFCFCF"},{"text":" Access to host menu","color":"#FFFFFF"},{"text":"\n/function uhc:reset >","color":"#CFCFCF"},{"text":" Load the datapack / reset a game","color":"#FFFFFF"},{"text":"\n/function uhc:reset/full >","color":"#CFCFCF"},{"text":" Full reset of the datapack\n","color":"#FFFFFF"}]
execute as @a[tag=uhc.host] unless entity @s[scores={uhc.player.lang=0..}] run tellraw @s [{"text":"[","color":"#6F6F6F","click_event":{"action":"run_command","command":"/gamerule minecraft:send_command_feedback true"}},{"text":"UHC 26.3.0","color":"#FFE73F"},{"text":" - "},{"text":"pour ","color":"#E7E7E7"},{"text":"MC 1.21.11","color":"#3FE7FF"},{"text":" - "},{"text":"par ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":"\n/tag [pseudo] add/remove host >","color":"#CFCFCF"},{"text":" Accès au menu host","color":"#FFFFFF"},{"text":"\n/function uhc:reset >","color":"#CFCFCF"},{"text":" Charger le datapack / réinitialiser une partie","color":"#FFFFFF"},{"text":"\n/function uhc:reset/full >","color":"#CFCFCF"},{"text":" Réinitialisation complète du datapack\n","color":"#FFFFFF"}]
