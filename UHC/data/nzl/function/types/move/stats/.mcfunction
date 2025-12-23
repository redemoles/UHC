
#> nzl:types/move/stats/move/stats/
#
# @within			nzl:timer/tick
#
#
# @description		Prépare les effets à donner aux joueurs
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team

# Reset stats
scoreboard players set @s nzl.stats.abso 2
scoreboard players set @s nzl.stats.attack 10
scoreboard players set @s nzl.stats.defense 10
scoreboard players set @s nzl.stats.attack_special 10
scoreboard players set @s nzl.stats.speed 10
scoreboard players set @s nzl.stats.mining_speed 10

scoreboard players set @s nzl.stats.attack_speed 0
scoreboard players set @s nzl.stats.knockback_resistance 0

scoreboard players set @s nzl.stats.accuracy 0
scoreboard players set @s nzl.stats.flinch 0
scoreboard players set @s nzl.stats.poison 0

execute if score #pve uhc.data.temp matches ..0 run scoreboard players operation @s nzl.stats.defense += @s uhc.effect.resistance

# Fin de bonus/malus sur certaines attaques (Crachin, Fatal-Foudre, Champ Brumeux)
execute as @s[tag=nzl.eau.target] run function nzl:types/move/attack_end/eau
execute as @s[tag=nzl.electrique.power_1] run function nzl:types/move/attack_end/electrique
execute as @s[tag=nzl.fee.bonus] unless entity @s[predicate=nzl:effects/champ_brumeux] if score @n[type=marker,predicate=uhc:id_team] nzl.attack.length.06 matches 0 run function nzl:types/move/attack_end/fee

# Activation d'une attaque (Lancée de boule de neige)
execute as @s[scores={nzl.attack.right_click=1..}] run function nzl:types/move/attack_available/
scoreboard players remove @s[scores={nzl.attack.no_flood=1..}] nzl.attack.no_flood 1

# Attribution des stats en fonction du type et des attaques activés
execute as @s[scores={nzl.type.player=01}] at @s run function nzl:types/move/stats/acier
execute as @s[scores={nzl.type.player=02}] at @s run function nzl:types/move/stats/combat
execute as @s[scores={nzl.type.player=03}] at @s run function nzl:types/move/stats/dragon
execute as @s[scores={nzl.type.player=04}] at @s run function nzl:types/move/stats/eau
execute as @s[scores={nzl.type.player=05}] at @s run function nzl:types/move/stats/electrique
execute as @s[scores={nzl.type.player=06}] at @s run function nzl:types/move/stats/fee
execute as @s[scores={nzl.type.player=07}] at @s run function nzl:types/move/stats/feu
execute as @s[scores={nzl.type.player=08}] at @s run function nzl:types/move/stats/glace
execute as @s[scores={nzl.type.player=09}] at @s run function nzl:types/move/stats/insecte
execute as @s[scores={nzl.type.player=10}] at @s run function nzl:types/move/stats/normal
execute as @s[scores={nzl.type.player=11}] at @s run function nzl:types/move/stats/plante
execute as @s[scores={nzl.type.player=12}] at @s run function nzl:types/move/stats/poison
execute as @s[scores={nzl.type.player=13}] at @s run function nzl:types/move/stats/psy
execute as @s[scores={nzl.type.player=14}] at @s run function nzl:types/move/stats/roche
execute as @s[scores={nzl.type.player=15}] at @s run function nzl:types/move/stats/sol
execute as @s[scores={nzl.type.player=16}] at @s run function nzl:types/move/stats/spectre
execute as @s[scores={nzl.type.player=17}] at @s run function nzl:types/move/stats/tenebres
execute as @s[scores={nzl.type.player=18}] at @s run function nzl:types/move/stats/vol
execute as @s[scores={nzl.type.player=99}] at @s run function nzl:types/move/stats/---
