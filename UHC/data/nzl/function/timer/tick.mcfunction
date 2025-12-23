
#> nzl:timer/tick
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Function executed every tick
#

# Sélection de type par un joueur
execute as @a unless entity @s[scores={nzl.type.select=99}] run scoreboard players set @s nzl.type.evolve 1
execute as @a[scores={nzl.type.evolve=1..}] run function nzl:types/evolve/
execute as @a[scores={nzl.sound.evolve=1..}] at @s run function nzl:timer/sound/evolve

# Préparation des effets à appliquer aux joueurs et activation d'attaques
execute as @a[scores={uhc.player.lives=1..}] run function nzl:types/move/stats/

# Application des effets aux joueurs
execute as @a[scores={uhc.player.lives=1..}] run function nzl:types/move/effects

# Diminution de la durée et du délai d'attaque
execute as @e[type=marker,tag=UHC] run function nzl:timer/attack/

# Affichage des types disponibles
execute as @e[type=marker,tag=nzl.type] run function nzl:timer/scoreboard/marker_tick

# Changement de temps en fonction des attaques en cours
execute as @n[type=marker,tag=nzl.weather] run function nzl:timer/weather

# Clear Item de types au sol
execute as @e[type=item,tag=!item.check] run function nzl:timer/clear
