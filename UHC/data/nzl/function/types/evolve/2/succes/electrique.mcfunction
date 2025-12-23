
#> nzl:types/evolve/2/succes/electrique
#
# @within			nzl:types/evolve/2/
#
#
# @description		Evolution réussie
#

## Message


$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(statistiques)]}},{"text":"################################\n","color":"#FFDF00","bold":true,"obfuscated":true},{"text":"Tu as évolué !                                    \n                                                \nType : ","color":"#FFEF7F","bold":true},{"text":"ELECTRIQUE                            \n","color":"#FFDF00","bold":true},{"text":"Stade : ","color":"#FFEF7F","bold":true},{"text":"Intermédiaire                        \n                                                ","color":"#FFDF00","bold":true}]
$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(attaques)]}},{"text":"TALENT :","color":"#FFEF7F","bold":true},{"text":" [","color":"#FFDF00","bold":true},{"text":"STATIK","color":"#3FCFFF","bold":true},{"text":"]                         ","color":"#FFDF00","bold":true},{"text":"\nATTAQUE :","color":"#FFEF7F","bold":true},{"text":" [","color":"#FFDF00","bold":true},{"text":"FATAL-FOUDRE","color":"#FF3F3F","bold":true},{"text":"]                         \n","color":"#FFDF00","bold":true},{"text":"################################\n","color":"#FFDF00","bold":true,"obfuscated":true}]

## Items / Effets
# Personnel
scoreboard players set @s nzl.type.level 2

scoreboard players set @s nzl.type.evolve 0

scoreboard players set @s nzl.sound.evolve 1









# Clear Items





experience add @s -15 levels
clear @s minecraft:written_book








# Tag pour Advancement de son Talent
tag @s add nzl.level.2
tag @s remove nzl.level.1
