
#> nzl:types/evolve/3/item_list/roche
#
# @within			nzl:types/evolve/3/disponible/roche
#
#
# @description		Test si ce type est disponible
#

# Vérification des éléments nécessaires à l'évolution
execute store result score @s nzl.item1 run clear @s minecraft:air 0
execute store result score @s nzl.item2 run clear @s minecraft:air 0
execute store result score @s nzl.item3 run clear @s minecraft:air 0
execute store result score @s nzl.item4 run clear @s minecraft:air 0
execute store result score @s nzl.item5 run clear @s minecraft:air 0
execute unless entity @s[scores={nzl.type.player=14,nzl.item1=0..,nzl.item2=0..,nzl.item3=0..,nzl.item4=0..,uhc.player.kills=1..},level=15..] run scoreboard players set @s nzl.type.evolve 0

# Echec
tellraw @s[scores={nzl.type.evolve=0}] [{"text":"Tu n'as pas tous les éléments requis pour évoluer.","color":"#FF3F3F","bold":false}]
tellraw @s[scores={nzl.type.evolve=0,uhc.player.kills=..0}] [{"text":"Nombre de kills : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"uhc.player.kills"}},{"text":"/1"}]


tellraw @s[scores={nzl.type.evolve=0},level=..14] [{"text":"Niveaux : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"nzl.player.level"}},{"text":"/15"}]
tellraw @s[scores={nzl.type.evolve=0,uhc.player.kills=1..}] [{"text":"Nombre de kills : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"uhc.player.kills"}},{"text":"/1"}]


tellraw @s[scores={nzl.type.evolve=0},level=15..] [{"text":"Niveaux : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"nzl.player.level"}},{"text":"/15"}]

# Réussite
execute if score @s nzl.type.evolve matches 3 run function nzl:types/evolve/3/succes/roche with storage nzl roche_3_chat
