
#> bhc:in_game/scenario/02/target/randomizer/sort_next
#
# @within			bhc:in_game/scenario/02/target/randomizer/cooldown
#
#
# @description		Réinitialisation des id de ciblage
#

# Définition de l'ordre de passage dans le randomizer
scoreboard players operation @s bhc.target.sort = @s bhc.targeter.id
scoreboard players operation @s bhc.target.sort %= #02 uhc.data.numbers

# Mémorisation du dernier id et réinitialisation
scoreboard players operation @s bhc.targeted.former_id = @s bhc.targeted.id
scoreboard players operation @s bhc.targeter.former_id = @s bhc.targeter.id
scoreboard players set @s bhc.targeted.id -1
scoreboard players set @s bhc.targeter.id -1

# Nombre d'équipe à tester
scoreboard players operation #temp bhc.data.temp = #team uhc.data.temp.inv
