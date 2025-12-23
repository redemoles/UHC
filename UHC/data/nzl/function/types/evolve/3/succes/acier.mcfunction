
#> nzl:types/evolve/3/succes/acier
#
# @within			nzl:types/evolve/3/
#
#
# @description		Evolution réussie
#

## Message


$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(statistiques)]}},{"text":"################################\n","color":"#BFBFBF","bold":true,"obfuscated":true},{"text":"Tu as évolué !                                    \n                                                \nType : ","color":"#DFDFDF","bold":true},{"text":"ACIER                            \n","color":"#BFBFBF","bold":true},{"text":"Stade : ","color":"#DFDFDF","bold":true},{"text":"Final                        \n                                                ","color":"#BFBFBF","bold":true}]
$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(attaques)]}},{"text":"TALENT :","color":"#DFDFDF","bold":true},{"text":" [","color":"#BFBFBF","bold":true},{"text":"ÉPINE DE FER","color":"#3FCFFF","bold":true},{"text":"]                         ","color":"#BFBFBF","bold":true},{"text":"\nATTAQUE :","color":"#DFDFDF","bold":true},{"text":" [","color":"#BFBFBF","bold":true},{"text":"MUR DE FER","color":"#FF3F3F","bold":true},{"text":"]                         \n","color":"#BFBFBF","bold":true},{"text":"################################\n","color":"#BFBFBF","bold":true,"obfuscated":true}]

## Items / Effets
# Personnel
scoreboard players set @s nzl.type.level 3

scoreboard players set @s nzl.type.evolve 0

scoreboard players set @s nzl.sound.evolve 1









# Clear Items





experience add @s -15 levels
clear @s minecraft:written_book
