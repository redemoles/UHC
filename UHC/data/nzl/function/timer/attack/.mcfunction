
#> nzl:timer/attack/
#
# @within			nzl:timer/tick
#
#
# @description		Function executed every tick
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team

# Fin de bonus/malus pour certaines attaque (Crachin, Fatal-Foudre)
execute if score @s nzl.attack.length.04 matches 1 run function nzl:timer/attack/length_eau
execute if score @s nzl.attack.length.05 matches 1 run function nzl:timer/attack/length_electrique

# Diminution tick chargement/durée
execute if score @s nzl.attack.length matches 1.. run function nzl:timer/attack/length
execute if score @s nzl.attack.cooldown matches 1.. run function nzl:timer/attack/cooldown
