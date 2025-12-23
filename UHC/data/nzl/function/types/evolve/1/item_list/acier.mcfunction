
#> nzl:types/evolve/1/item_list/acier
#
# @within			nzl:types/evolve/1/disponible/acier
#
#
# @description		Test si ce type est disponible
#

# Vérification des éléments nécessaires à l'évolution
execute store result score @s nzl.item1 run clear @s minecraft:diamond 0
execute store result score @s nzl.item2 run clear @s minecraft:iron_pickaxe[damage=0] 0
execute store result score @s nzl.item3 run clear @s minecraft:shield[damage=0] 0
execute store result score @s nzl.item4 run clear @s minecraft:iron_block 0
execute store result score @s nzl.item5 run clear @s minecraft:air 0
execute unless entity @s[scores={nzl.type.select=01,nzl.item1=1..,nzl.item2=1..,nzl.item3=1..,nzl.item4=3..,nzl.item5=0..},level=15..] run scoreboard players set @s nzl.type.select 99

# Echec
tellraw @s[scores={nzl.type.select=99}] [{"text":"Tu n'as pas tous les éléments requis pour le type ","color":"#FF3F3F","bold":false},{"text":"Acier","color":"#BFBFBF","bold":true},{"text":".","color":"#FF3F3F","bold":false}]
tellraw @s[scores={nzl.type.select=99,nzl.item1=..0}] [{"text":"Diamant : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"nzl.item1"}},{"text":"/1"}]
tellraw @s[scores={nzl.type.select=99,nzl.item2=..0}] [{"text":"Pioche en fer neuve : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"nzl.item2"}},{"text":"/1"}]
tellraw @s[scores={nzl.type.select=99,nzl.item3=..0}] [{"text":"Bouclier neuf : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"nzl.item3"}},{"text":"/1"}]
tellraw @s[scores={nzl.type.select=99,nzl.item4=..2}] [{"text":"Blocs de fer : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"nzl.item4"}},{"text":"/3"}]
tellraw @s[scores={nzl.type.select=99},level=..14] [{"text":"Niveaux : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"nzl.player.level"}},{"text":"/15"}]
tellraw @s[scores={nzl.type.select=99,nzl.item1=1..}] [{"text":"Diamant : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"nzl.item1"}},{"text":"/1"}]
tellraw @s[scores={nzl.type.select=99,nzl.item2=1..}] [{"text":"Pioche en fer neuve : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"nzl.item2"}},{"text":"/1"}]
tellraw @s[scores={nzl.type.select=99,nzl.item3=1..}] [{"text":"Bouclier neuf : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"nzl.item3"}},{"text":"/1"}]
tellraw @s[scores={nzl.type.select=99,nzl.item4=3..}] [{"text":"Blocs de fer : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"nzl.item4"}},{"text":"/3"}]
tellraw @s[scores={nzl.type.select=99},level=15..] [{"text":"Niveaux : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"nzl.player.level"}},{"text":"/15"}]

# Réussite
execute if score @s nzl.type.select matches 01 run function nzl:types/evolve/1/succes/acier with storage nzl acier_1_chat
