
#> nzl:types/evolve/2/succes/fee
#
# @within			nzl:types/evolve/2/
#
#
# @description		Evolution réussie
#

## Message


$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(statistiques)]}},{"text":"################################\n","color":"#FFBFFF","bold":true,"obfuscated":true},{"text":"Tu as évolué !                                    \n                                                \nType : ","color":"#FFDFFF","bold":true},{"text":"FEE                            \n","color":"#FFBFFF","bold":true},{"text":"Stade : ","color":"#FFDFFF","bold":true},{"text":"Intermédiaire                        \n                                                ","color":"#FFBFFF","bold":true}]
$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(attaques)]}},{"text":"TALENT :","color":"#FFDFFF","bold":true},{"text":" [","color":"#FFBFFF","bold":true},{"text":"VAMPIBAISER","color":"#3FCFFF","bold":true},{"text":"]                         ","color":"#FFBFFF","bold":true},{"text":"\nATTAQUE :","color":"#FFDFFF","bold":true},{"text":" [","color":"#FFBFFF","bold":true},{"text":"CHAMP BRUMEUX","color":"#FF3F3F","bold":true},{"text":"]                         \n","color":"#FFBFFF","bold":true},{"text":"################################\n","color":"#FFBFFF","bold":true,"obfuscated":true}]

## Items / Effets
# Personnel
scoreboard players set @s nzl.type.level 2

scoreboard players set @s nzl.type.evolve 0

scoreboard players set @s nzl.sound.evolve 1









# Clear Items





experience add @s -15 levels
clear @s minecraft:written_book
