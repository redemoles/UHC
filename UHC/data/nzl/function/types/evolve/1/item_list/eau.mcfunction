
#> nzl:types/evolve/1/item_list/eau
#
# @within			nzl:types/evolve/1/disponible/eau
#
#
# @description		Test si ce type est disponible
#

# Vérification des éléments nécessaires à l'évolution
execute store result score @s nzl.item1 run clear @s minecraft:diamond 0
execute store result score @s nzl.item2 run clear @s minecraft:fishing_rod[damage=0] 0
execute store result score @s nzl.item3 run clear @s minecraft:axolotl_bucket 0
execute store result score @s nzl.item4 run clear @s minecraft:kelp 0
execute store result score @s nzl.item5 run clear @s minecraft:air 0
execute unless entity @s[scores={nzl.type.select=04,nzl.item1=1..,nzl.item2=1..,nzl.item3=1..,nzl.item4=32..,nzl.item5=0..},level=15..] run scoreboard players set @s nzl.type.select 99

# Echec
tellraw @s[scores={nzl.type.select=99}] [{"text":"Tu n'as pas tous les éléments requis pour le type ","color":"#FF3F3F","bold":false},{"text":"Eau","color":"#3F9FFF","bold":true},{"text":".","color":"#FF3F3F","bold":false}]
tellraw @s[scores={nzl.type.select=99,nzl.item1=..0}] [{"text":"Diamant : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"nzl.item1"}},{"text":"/1"}]
tellraw @s[scores={nzl.type.select=99,nzl.item2=..0}] [{"text":"Canne à pêche neuve : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"nzl.item2"}},{"text":"/1"}]
tellraw @s[scores={nzl.type.select=99,nzl.item3=..0}] [{"text":"Seau avec un axolotl : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"nzl.item3"}},{"text":"/1"}]
tellraw @s[scores={nzl.type.select=99,nzl.item4=..31}] [{"text":"Algues : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"nzl.item4"}},{"text":"/32"}]
tellraw @s[scores={nzl.type.select=99},level=..14] [{"text":"Niveaux : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"nzl.player.level"}},{"text":"/15"}]
tellraw @s[scores={nzl.type.select=99,nzl.item1=1..}] [{"text":"Diamant : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"nzl.item1"}},{"text":"/1"}]
tellraw @s[scores={nzl.type.select=99,nzl.item2=1..}] [{"text":"Canne à pêche neuve : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"nzl.item2"}},{"text":"/1"}]
tellraw @s[scores={nzl.type.select=99,nzl.item3=1..}] [{"text":"Seau avec un axolotl : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"nzl.item3"}},{"text":"/1"}]
tellraw @s[scores={nzl.type.select=99,nzl.item4=32..}] [{"text":"Algues : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"nzl.item4"}},{"text":"/32"}]
tellraw @s[scores={nzl.type.select=99},level=15..] [{"text":"Niveaux : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"nzl.player.level"}},{"text":"/15"}]

# Réussite
execute if score @s nzl.type.select matches 04 run function nzl:types/evolve/1/succes/eau with storage nzl eau_1_chat
