
#> uhc:in_game/scenario/ironman/reward
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Récompense pour le dernier Ironman
#

# Message aux autres joueurs
tellraw @a[scores={uhc.player.lang=061801}] [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" ","color":"#FFFFFF","bold":false},{"selector":"@s","bold":false},{"text":" est Ironman !","color":"#FFE73F","bold":false}]
tellraw @a[scores={uhc.player.lang=051407}] [{"text":"Ironman ","color":"#FFE73F","bold":false},{"text":">","color":"#9F9F9F","bold":true},{"text":" ","color":"#FFFFFF","bold":false},{"selector":"@s","bold":false},{"text":" is Ironman!","color":"#FFE73F","bold":false}]

# Item
data modify storage uhc:temp Item_ironman set from storage uhc:settings Item_ironman
data modify storage uhc:temp Item_ironman[0].components merge value {}
execute if data storage uhc:temp Item_ironman[0] run function uhc:in_game/scenario/ironman/item with storage uhc:temp Item_ironman[0]

# Équipe
execute in uhc:lobby as @e[type=marker,tag=UHC,distance=0..,scores={uhc.scenario.ironman=1..}] run function bhc:scores_calculator/death/ironman/remove_1

# Anti-boucle
scoreboard players set #winner_rewarded uhc.scenario.ironman 1
