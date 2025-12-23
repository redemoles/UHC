
#> mls:entity/arrow/tp_1
#
# @within			mls:entity/arrow/
#
#
# @description		TP flèche
#

# Existe-t-il une flèche déjà lancé ?
$execute unless score @s mls.player.kit.bow matches 1 if entity @n[scores={mls.player.kit.bow=1},nbt={inGround:0b,weapon:{components:{"minecraft:custom_data":{Tags:"$(weapon)"}}}}] run scoreboard players set @s mls.player.kit.bow 2
execute if score @s mls.player.kit.bow matches 2 run return fail

# Détection du lanceur
$tag @p[nbt={Inventory:[{id:"minecraft:bow",components:{"minecraft:custom_data":{Tags:"$(weapon)"}}}]}] add $(weapon)
$execute unless entity @s[scores={mls.player.kit.bow=1}] run damage @p[tag=$(weapon)] 2

# Lanceur monte la flèche
$ride @p[tag=$(weapon)] mount @s[nbt={inGround:0b}]
$tag @s remove $(weapon)

scoreboard players set @s mls.player.kit.bow 1
