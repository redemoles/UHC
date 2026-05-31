
#> uhc:in_game/player/effect/tick
#
# @within			uhc:in_game/player/tick
#
#
# @description		Fonction tick de base en jeu pour chaque joueur
#

# Absorption
execute if score #absorption uhc.data.setup matches ..1 if entity @s[tag=uhc.player,predicate=uhc:effect/absorption] run function uhc:in_game/player/effect/absorption

# Fire Resistance
execute if score #no_fire uhc.scenario matches 1 run effect give @s minecraft:fire_resistance infinite 0 true

# Night Vision
execute unless score #nzl uhc.gamemode matches 1 run effect give @s[tag=uhc.night_vision] minecraft:night_vision infinite 0 true

# Resistance
execute if score #pve uhc.data.temp matches ..0 run scoreboard players set @s[scores={uhc.effect.resistance=-1}] uhc.effect.resistance 0
effect give @s[scores={uhc.effect.resistance=-1}] minecraft:resistance infinite 4 true
execute unless score #annonce mls.player.team matches 1 run effect clear @s[scores={uhc.effect.resistance=0}] minecraft:resistance
effect give @s[scores={uhc.effect.resistance=1}] minecraft:resistance infinite 0 true
effect give @s[scores={uhc.effect.resistance=2}] minecraft:resistance infinite 1 true
effect give @s[scores={uhc.effect.resistance=3}] minecraft:resistance infinite 2 true

# Speed
execute if entity @s[tag=uhc.player,tag=!uhc.effect.speed,predicate=uhc:effect/speed] run function uhc:in_game/player/effect/speed
execute if entity @s[tag=uhc.player,tag=uhc.effect.speed,predicate=!uhc:effect/speed] run function uhc:in_game/player/effect/speed

# Strength
execute if entity @s[tag=uhc.player,tag=!uhc.effect.strength,predicate=uhc:effect/strength] run function uhc:in_game/player/effect/strength
execute if entity @s[tag=uhc.player,tag=uhc.effect.strength,predicate=!uhc:effect/strength] run function uhc:in_game/player/effect/strength

# Reset pour prochain tick
execute if score #pve uhc.data.temp matches ..0 run scoreboard players set @s uhc.effect.resistance 0
