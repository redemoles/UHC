
#> bhc:scenario/02/target/randomizer/4_teams_left/sort_next
#
# @within			bhc:scenario/02/target/randomizer/cooldown
#
#
# @description		Réinitialisation des id de ciblage
#

# Définition de l'ordre de passage dans le randomizer
execute unless score @s bhc.targeter.id matches 2..3 run scoreboard players set @s bhc.target.sort 1
execute if score @s bhc.targeter.id matches 3 run scoreboard players set @s bhc.target.sort 0
execute if score @s bhc.targeter.id matches 2 run scoreboard players set @s bhc.target.sort -1

# Mémorisation du dernier id et réinitialisation
scoreboard players operation @s bhc.targeted.former_id = @s bhc.targeted.id
scoreboard players operation @s bhc.targeter.former_id = @s bhc.targeter.id
scoreboard players set @s bhc.targeted.id -1
scoreboard players set @s bhc.targeter.id -1

# Nombre d'équipe à tester
scoreboard players operation #temp bhc.data.temp = #team uhc.data.temp.inv
