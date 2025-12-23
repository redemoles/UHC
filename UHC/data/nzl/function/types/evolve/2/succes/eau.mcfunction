
#> nzl:types/evolve/2/succes/eau
#
# @within			nzl:types/evolve/2/
#
#
# @description		Evolution réussie
#

## Message


$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(statistiques)]}},{"text":"################################\n","color":"#3F9FFF","bold":true,"obfuscated":true},{"text":"Tu as évolué !                                    \n                                                \nType : ","color":"#9FCFFF","bold":true},{"text":"EAU                            \n","color":"#3F9FFF","bold":true},{"text":"Stade : ","color":"#9FCFFF","bold":true},{"text":"Intermédiaire                        \n                                                ","color":"#3F9FFF","bold":true}]
$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(attaques)]}},{"text":"TALENT :","color":"#9FCFFF","bold":true},{"text":" [","color":"#3F9FFF","bold":true},{"text":"SURF","color":"#3FCFFF","bold":true},{"text":"]                         ","color":"#3F9FFF","bold":true},{"text":"\nATTAQUE :","color":"#9FCFFF","bold":true},{"text":" [","color":"#3F9FFF","bold":true},{"text":"CRACHIN","color":"#FF3F3F","bold":true},{"text":"]                         \n","color":"#3F9FFF","bold":true},{"text":"################################\n","color":"#3F9FFF","bold":true,"obfuscated":true}]

## Items / Effets
# Personnel
scoreboard players set @s nzl.type.level 2

scoreboard players set @s nzl.type.evolve 0

scoreboard players set @s nzl.sound.evolve 1





# Minage sous l'eau
attribute @s minecraft:submerged_mining_speed base set 0.8


# Clear Items





experience add @s -15 levels
clear @s minecraft:written_book
