
#> nzl:types/move/talent/fee_2
#
# @within			function tag "nzl:advancements/electrique_talent_2.json"
#
#
# @description		Vampibaiser
#

execute store result score #random nzl.data run random value 1..100

execute if score #random nzl.data matches 1..65 run effect give @s regeneration 1 2 true
advancement revoke @s only nzl:fee_talent_2
