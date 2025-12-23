
#> mls:kit/pyrolienne
#
# @within			mls:kit/
# 
#
# @description		Don du kit pyrolienne
#

# flame / fire aspect / fire resistance ou arc tridimensionel ?

give @s enchanted_book[stored_enchantments={"minecraft:flame":1}]
give @s enchanted_book[stored_enchantments={"minecraft:fire_aspect":1}]
$give @s[scores={uhc.player.lang=061801}] bow[minecraft:custom_name=[{"text":"Chevauche-flèche","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Durabilité : 10","color":"#FFFFFF","italic":false}],[{"text":"Coût par tir : 2 PV","color":"#FFFFFF","italic":false}]],custom_data={Tags:"mls.kit.pyro.$(mls_pyro)"},repair_cost=40,max_damage=10]
$give @s[scores={uhc.player.lang=051407}] bow[minecraft:custom_name=[{"text":"Arrow riding","color":"#FFFFFF","italic":false}],minecraft:lore=[[{"text":"Durability: 10","color":"#FFFFFF","italic":false}],[{"text":"Cost per shot: 2 HP","color":"#FFFFFF","italic":false}]],custom_data={Tags:"mls.kit.pyro.$(mls_pyro)"},repair_cost=40,max_damage=10]
$scoreboard players set #mls.kit.pyro.$(mls_pyro) mls.player.kit.bow 1
