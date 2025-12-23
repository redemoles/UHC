
#> nzl:types/evolve/2/item_list/roche
#
# @within			nzl:types/evolve/2/disponible/roche
#
#
# @description		Test si ce type est disponible
#

# Vérification des éléments nécessaires à l'évolution
execute store result score @s nzl.item1 run clear @s minecraft:diamond 0
execute store result score @s nzl.item2 run clear @s minecraft:iron_pickaxe[damage=0] 0
execute store result score @s nzl.item3 run clear @s minecraft:shield[damage=0] 0
execute store result score @s nzl.item4 run clear @s minecraft:iron_ingot 0
execute store result score @s nzl.item5 run clear @s minecraft:air 0
execute unless entity @s[scores={nzl.type.player=14,nzl.item1=0..,nzl.item2=1..,nzl.item3=1..,nzl.item4=64..,nzl.item5=0..},level=15..] run scoreboard players set @s nzl.type.evolve 0

# Echec
tellraw @s[scores={nzl.type.evolve=0}] [{"text":"Tu n'as pas tous les éléments requis pour évoluer.","color":"#FF3F3F","bold":false}]
tellraw @s[scores={nzl.type.evolve=0,nzl.item2=..0}] [{"text":"Pioche en fer neuve : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"nzl.item2"}},{"text":"/1"}]
tellraw @s[scores={nzl.type.evolve=0,nzl.item3=..0}] [{"text":"Bouclier neuf : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"nzl.item3"}},{"text":"/1"}]
tellraw @s[scores={nzl.type.evolve=0,nzl.item4=..0}] [{"text":"Lingots de fer : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"nzl.item4"}},{"text":"/64"}]
tellraw @s[scores={nzl.type.evolve=0},level=..14] [{"text":"Niveaux : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"nzl.player.level"}},{"text":"/15"}]
tellraw @s[scores={nzl.type.evolve=0,nzl.item2=1..}] [{"text":"Pioche en fer neuve : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"nzl.item2"}},{"text":"/1"}]
tellraw @s[scores={nzl.type.evolve=0,nzl.item3=1..}] [{"text":"Bouclier neuf : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"nzl.item3"}},{"text":"/1"}]
tellraw @s[scores={nzl.type.evolve=0,nzl.item4=1..}] [{"text":"Lingots de fer : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"nzl.item4"}},{"text":"/64"}]
tellraw @s[scores={nzl.type.evolve=0},level=15..] [{"text":"Niveaux : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"nzl.player.level"}},{"text":"/15"}]

# Réussite
execute if score @s nzl.type.evolve matches 2 run function nzl:types/evolve/2/succes/roche with storage nzl roche_2_chat
