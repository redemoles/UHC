
#> uhc:in_game/scenario/ironman/reward
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Récompense pour le dernier Ironman
#

# Message aux autres joueurs
function uhc:translation/in_game/scenario/ironman_reward

# Item
data modify storage uhc:temp Item_ironman set from storage uhc:settings Item_ironman
data modify storage uhc:temp Item_ironman[0].components merge value {}
execute if data storage uhc:temp Item_ironman[0] run function uhc:in_game/scenario/ironman/item with storage uhc:temp Item_ironman[0]

# Bingo UHC
execute if score #bhc uhc.gamemode matches 1 in uhc:lobby as @e[type=minecraft:marker,tag=UHC,distance=0..,scores={uhc.scenario.ironman=1..}] run function bhc:scores_calculator/death/ironman/remove_1

# Anti-boucle
scoreboard players set #winner_rewarded uhc.scenario.ironman 1
