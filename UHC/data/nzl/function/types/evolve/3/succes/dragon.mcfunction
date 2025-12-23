
#> nzl:types/evolve/3/succes/dragon
#
# @within			nzl:types/evolve/3/
#
#
# @description		Evolution réussie
#

## Message


$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(statistiques)]}},{"text":"################################\n","color":"#7F5FDF","bold":true,"obfuscated":true},{"text":"Tu as évolué !                                    \n                                                \nType : ","color":"#BFAFEF","bold":true},{"text":"DRAGON                            \n","color":"#7F5FDF","bold":true},{"text":"Stade : ","color":"#BFAFEF","bold":true},{"text":"Final                        \n                                                ","color":"#7F5FDF","bold":true}]
$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(attaques)]}},{"text":"TALENT :","color":"#BFAFEF","bold":true},{"text":" [","color":"#7F5FDF","bold":true},{"text":"DÉBUT CALME","color":"#3FCFFF","bold":true},{"text":"]                         ","color":"#7F5FDF","bold":true},{"text":"\nATTAQUE :","color":"#BFAFEF","bold":true},{"text":" [","color":"#7F5FDF","bold":true},{"text":"DANSE-DRACO","color":"#FF3F3F","bold":true},{"text":"]                         \n","color":"#7F5FDF","bold":true},{"text":"################################\n","color":"#7F5FDF","bold":true,"obfuscated":true}]

## Items / Effets
# Personnel
scoreboard players set @s nzl.type.level 3

scoreboard players set @s nzl.type.evolve 0

scoreboard players set @s nzl.sound.evolve 1



attribute @s minecraft:scale base set 1.3

# Points de vie
attribute @s minecraft:max_health base set 22
effect give @s minecraft:regeneration 3 1 true

# Clear Items





experience add @s -15 levels
clear @s minecraft:written_book
