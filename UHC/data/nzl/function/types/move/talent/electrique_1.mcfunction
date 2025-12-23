
#> nzl:types/move/talent/electrique_1
#
# @within			function tag "nzl:advancements/electrique_talent_1.json"
#
#
# @description		Statik
#

execute store result score #random nzl.data run random value 1..100

execute if score #random nzl.data matches 1..20 run scoreboard players set @s nzl.statut.paralysis 100
advancement revoke @s only nzl:electrique_talent_1
