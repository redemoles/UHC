
#> nzl:types/evolve/2/succes/acier
#
# @within			nzl:types/evolve/2/
#
#
# @description		Evolution réussie
#

## Message


$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(statistiques)]}},{"text":"################################\n","color":"#BFBFBF","bold":true,"obfuscated":true},{"text":"Tu as évolué !                                    \n                                                \nType : ","color":"#DFDFDF","bold":true},{"text":"ACIER                            \n","color":"#BFBFBF","bold":true},{"text":"Stade : ","color":"#DFDFDF","bold":true},{"text":"Intermédiaire                        \n                                                ","color":"#BFBFBF","bold":true}]
$tellraw @s [{"text":"","hover_event":{"action":"show_text","value":[$(attaques)]}},{"text":"TALENT :","color":"#DFDFDF","bold":true},{"text":" [","color":"#BFBFBF","bold":true},{"text":"ÉPINE DE FER","color":"#3FCFFF","bold":true},{"text":"]                         ","color":"#BFBFBF","bold":true},{"text":"\nATTAQUE :","color":"#DFDFDF","bold":true},{"text":" [","color":"#BFBFBF","bold":true},{"text":"MUR DE FER","color":"#FF3F3F","bold":true},{"text":"]                         \n","color":"#BFBFBF","bold":true},{"text":"################################\n","color":"#BFBFBF","bold":true,"obfuscated":true}]

## Items / Effets
# Personnel
scoreboard players set @s nzl.type.level 2

scoreboard players set @s nzl.type.evolve 0

scoreboard players set @s nzl.sound.evolve 1





# Points de vie
attribute @s minecraft:max_health base set 18
effect give @s minecraft:regeneration 3 1 true

# Clear Items
clear @s minecraft:air 0
clear @s minecraft:iron_pickaxe[damage=0] 1
clear @s minecraft:shield 1
clear @s minecraft:iron_ingot 64
clear @s minecraft:air 0
experience add @s -15 levels
clear @s minecraft:written_book
