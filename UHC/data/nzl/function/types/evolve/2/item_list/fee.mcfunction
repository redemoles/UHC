
#> nzl:types/evolve/1/item_list/fee
#
# @within			nzl:types/evolve/1/disponible/fee
#
#
# @description		Test si ce type est disponible
#

# Vérification des éléments nécessaires à l'évolution
execute store result score @s nzl.item1 run clear @s minecraft:diamond 0
scoreboard players operation @s nzl.item2 = @s nzl.goal.iron_golem
execute store result score @s nzl.item3 run clear @s minecraft:air 0
execute store result score @s nzl.item4 run clear @s minecraft:air 0
execute store result score @s nzl.item5 run clear @s minecraft:air 0
execute unless entity @s[scores={nzl.type.select=06,nzl.item1=0..,nzl.item2=1..,nzl.item3=0..,nzl.item4=0..,nzl.item5=0..},level=15..] run scoreboard players set @s nzl.type.select 99

# Echec
tellraw @s[scores={nzl.type.evolve=0}] [{"text":"Tu n'as pas tous les éléments requis pour évoluer.","color":"#FF3F3F","bold":false}]
tellraw @s[scores={nzl.type.evolve=0,nzl.item2=..0}] [{"text":"Mobs tués avec un golem de fer : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"nzl.item2"}},{"text":"/1"}]


tellraw @s[scores={nzl.type.evolve=0},level=..14] [{"text":"Niveaux : ","color":"#FF5F5F","bold":false},{"score":{"name":"@s","objective":"nzl.player.level"}},{"text":"/15"}]
tellraw @s[scores={nzl.type.evolve=0,nzl.item2=1..}] [{"text":"Mobs tués avec un golem de fer : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"nzl.item2"}},{"text":"/1"}]


tellraw @s[scores={nzl.type.evolve=0},level=15..] [{"text":"Niveaux : ","color":"#5FAFFF","bold":false},{"score":{"name":"@s","objective":"nzl.player.level"}},{"text":"/15"}]

# Réussite
execute if score @s nzl.type.evolve matches 2 run function nzl:types/evolve/2/succes/fee with storage nzl fee_2_chat
