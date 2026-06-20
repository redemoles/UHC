
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
execute as @a[tag=uhc.host] run function uhc:translation/load
execute as @a[tag=uhc.host] unless entity @s[scores={uhc.player.lang=0..}] run tellraw @s [{"text":"[","color":"#6F6F6F","click_event":{"action":"run_command","command":"/gamerule minecraft:send_command_feedback true"}},{"text":"UHC 26.6.2","color":"#FFE73F"},{"text":" - "},{"text":"for ","color":"#E7E7E7"},{"text":"MC 26.1.2","color":"#3FE7FF"},{"text":" - "},{"text":"by ","color":"#E7E7E7"},{"text":"Redemoles","color":"#CF3FFF"},{"text":"]"},{"text":"\n/tag [nickname] add/remove host >","color":"#CFCFCF"},{"text":" Access to host menu.","color":"#FFFFFF"},{"text":"\n/function uhc:reset >","color":"#CFCFCF"},{"text":" Load the datapack / reset a game.","color":"#FFFFFF"},{"text":"\n/function uhc:reset/full >","color":"#CFCFCF"},{"text":" Full reset of the datapack.\n","color":"#FFFFFF"}]
