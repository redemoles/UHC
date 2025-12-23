
#> nzl:types/evolve/2/item_list/dragon
#
# @within			nzl:types/evolve/2/disponible/dragon
#
#
# @description		Test si ce type est disponible
#

# Vérification des éléments nécessaires à l'évolution
execute store result score @s nzl.item1 run clear @s minecraft:diamond 0
scoreboard players operation @s nzl.item2 = @s nzl.goal.mobs_killed
execute store result score @s nzl.item3 run clear @s minecraft:air 0
execute store result score @s nzl.item4 run clear @s minecraft:air 0
execute store result score @s nzl.item5 run clear @s minecraft:air 0
execute unless entity @s[scores={nzl.type.select=03,nzl.item1=0..,nzl.item2=60..,nzl.item3=0..,nzl.item4=0..,nzl.item5=0..},level=15..] run scoreboard players set @s nzl.type.select 99

# Echec
tellraw @s[scores={nzl.type.evolve=0}] [{"text":"Tu n'as pas tous les éléments requis pour évoluer.","color":"#FF3F3F","bold":false}]
tellraw @s[scores={nzl.type.evolve=0,nzl.item2=..59}] [{"text":"Mobs tués : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"nzl.item2"}},{"text":"/60"}]


tellraw @s[scores={nzl.type.evolve=0},level=..14] [{"text":"Niveaux : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"nzl.player.level"}},{"text":"/15"}]
tellraw @s[scores={nzl.type.evolve=0,nzl.item2=60..}] [{"text":"Mobs tués : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"nzl.item2"}},{"text":"/60"}]


tellraw @s[scores={nzl.type.evolve=0},level=15..] [{"text":"Niveaux : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"nzl.player.level"}},{"text":"/15"}]

# Réussite
execute if score @s nzl.type.evolve matches 2 run function nzl:types/evolve/2/succes/dragon with storage nzl dragon_2_chat
