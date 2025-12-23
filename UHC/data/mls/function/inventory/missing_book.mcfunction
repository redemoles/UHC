
#> mls:inventory/missing_book
#
# @within			mls:inventory/missing
#
#
# @description		Don de livre si manquant dans l'inventaire
#

execute store result score @s mls.player.inventory run clear @s minecraft:writable_book[custom_data={uhc.scenario.moles:1}] 0
execute if score @s mls.player.inventory matches 0 run give @s[scores={uhc.player.lang=061801}] minecraft:writable_book[minecraft:item_name=[{"text":"Envoyer un message","bold":true}],custom_data={uhc.scenario.moles:1}]
execute if score @s mls.player.inventory matches 0 run give @s[scores={uhc.player.lang=051407}] minecraft:writable_book[minecraft:item_name=[{"text":"Send a message","bold":true}],custom_data={uhc.scenario.moles:1}]
