
#> nzl:types/evolve/2/succes/combat
#
# @within			nzl:types/evolve/2/
#
#
# @description		Evolution réussie
#

## Message


$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(statistiques)]}},{"text":"################################\n","color":"#7F3F00","bold":true,"obfuscated":true},{"text":"Tu as évolué !                                    \n                                                \nType : ","color":"#BF9F7F","bold":true},{"text":"COMBAT                            \n","color":"#7F3F00","bold":true},{"text":"Stade : ","color":"#BF9F7F","bold":true},{"text":"Intermédiaire                        \n                                                ","color":"#7F3F00","bold":true}]
$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(attaques)]}},{"text":"TALENT :","color":"#BF9F7F","bold":true},{"text":" [","color":"#7F3F00","bold":true},{"text":"DOUBLE PIED","color":"#3FCFFF","bold":true},{"text":"]                         ","color":"#7F3F00","bold":true},{"text":"\nATTAQUE :","color":"#BF9F7F","bold":true},{"text":" [","color":"#7F3F00","bold":true},{"text":"DYNAMO-POING","color":"#FF3F3F","bold":true},{"text":"]                         \n","color":"#7F3F00","bold":true},{"text":"################################\n","color":"#7F3F00","bold":true,"obfuscated":true}]

## Items / Effets
# Personnel
scoreboard players set @s nzl.type.level 2

scoreboard players set @s nzl.type.evolve 0

scoreboard players set @s nzl.sound.evolve 1





# Points de vie
attribute @s minecraft:max_health base set 18
effect give @s minecraft:regeneration 3 1 true

# Clear Items





experience add @s -15 levels
clear @s minecraft:written_book
