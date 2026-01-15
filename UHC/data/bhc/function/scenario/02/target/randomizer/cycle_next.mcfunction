
#> bhc:scenario/02/target/randomizer/cycle_next
#
# @within			bhc:scenario/02/target/randomizer/cooldown
#
#
# @description		Réinitialisation des id de ciblage
#

scoreboard players operation @s bhc.target.sort = @s bhc.targeter.id
scoreboard players operation @s bhc.target.sort %= #02 uhc.data.numbers

scoreboard players set @s bhc.targeted.id -1
execute unless score @s bhc.targeter.id matches 1 run scoreboard players set @s bhc.targeter.id -1
