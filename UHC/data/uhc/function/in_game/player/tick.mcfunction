
#> uhc:in_game/player/tick
#
# @within			uhc:in_game/timer/tick
#
#
# @description		Fonction tick de base en jeu pour chaque joueur
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team

# Connexion d'un joueur externe
execute unless score @s uhc.player.online matches 1 run function uhc:in_game/player/spec/

# Reconnexion d'un joueur
execute if score @s uhc.player.disconnect matches 1.. run function uhc:in_game/player/reconnect/

## Paramètres
# Bouclier
execute if score #shield uhc.data.setup matches 1..335 run function uhc:in_game/inventory/equipment/shield_durability with storage uhc:settings shield
execute if score #shield uhc.data.setup matches 0 run clear @s shield

# Enchantements maximum
function uhc:in_game/inventory/equipment/binding_curse
execute if score #diamond_protection uhc.data.setup matches ..3 run function uhc:in_game/inventory/equipment/diamond_protection with storage uhc:settings enchantments.diamond_protection
execute if score #diamond_sharpness uhc.data.setup matches ..4 run function uhc:in_game/inventory/equipment/diamond_sharpness with storage uhc:settings enchantments.diamond_sharpness
execute if score #iron_protection uhc.data.setup matches ..3 run function uhc:in_game/inventory/equipment/iron_protection with storage uhc:settings enchantments.iron_protection
execute if score #iron_sharpness uhc.data.setup matches ..4 run function uhc:in_game/inventory/equipment/iron_sharpness with storage uhc:settings enchantments.iron_sharpness
execute if score #axes_sharpness uhc.data.setup matches ..4 run function uhc:in_game/inventory/equipment/axes_sharpness with storage uhc:settings enchantments.axes_sharpness
execute if score #bow_power uhc.data.setup matches ..4 run function uhc:in_game/inventory/equipment/bow_power with storage uhc:settings enchantments.bow_power
execute if score #depth_strider uhc.data.setup matches ..2 run function uhc:in_game/inventory/equipment/depth_strider with storage uhc:settings enchantments.depth_strider
execute if score #lunge uhc.data.setup matches ..2 run function uhc:in_game/inventory/equipment/lunge with storage uhc:settings enchantments.lunge
# Fire Aspect / Flame
execute if score #fire_flame uhc.data.setup matches 0 if items entity @s[tag=!uhc.fire_flame] weapon.mainhand *[minecraft:enchantments~[{"enchantments":"minecraft:fire_aspect"}]] run item modify entity @s weapon.mainhand {function:"minecraft:set_enchantments",enchantments:{"minecraft:fire_aspect":-255},add:true}
execute if score #fire_flame uhc.data.setup matches 0 if items entity @s[tag=!uhc.fire_flame] weapon.mainhand *[minecraft:enchantments~[{"enchantments":"minecraft:flame"}]] run item modify entity @s weapon.mainhand {function:"minecraft:set_enchantments",enchantments:{"minecraft:flame":-255},add:true}
execute if score #fire_flame uhc.data.setup matches 0 if items entity @s[tag=!uhc.fire_flame] weapon.offhand *[minecraft:enchantments~[{"enchantments":"minecraft:fire_aspect"}]] run item modify entity @s weapon.offhand {function:"minecraft:set_enchantments",enchantments:{"minecraft:fire_aspect":-255},add:true}
execute if score #fire_flame uhc.data.setup matches 0 if items entity @s[tag=!uhc.fire_flame] weapon.offhand *[minecraft:enchantments~[{"enchantments":"minecraft:flame"}]] run item modify entity @s weapon.offhand {function:"minecraft:set_enchantments",enchantments:{"minecraft:flame":-255},add:true}

# PvP Version 1.8
execute if score #version_pvp uhc.data.setup matches 1 run function uhc:in_game/player/pvp/settings/version_pvp/1_8
execute if score #version_pvp uhc.data.setup matches 0 run function uhc:in_game/player/pvp/settings/version_pvp/1_21

# Chevaux
execute if score #horse_limit uhc.data.setup matches 0 if entity @s[predicate=uhc:ride_a_horse] run function uhc:in_game/player/pvp/settings/horse/

## Effets aux joueurs
# Résistance
execute if score #pve uhc.data.temp matches ..0 run scoreboard players set @s[scores={uhc.effect.resistance=-1}] uhc.effect.resistance 0
effect give @s[scores={uhc.effect.resistance=-1}] minecraft:resistance infinite 4 true
execute unless score #annonce mls.player.team matches 1 run effect clear @s[scores={uhc.effect.resistance=0}] minecraft:resistance
effect give @s[scores={uhc.effect.resistance=1}] minecraft:resistance infinite 0 true
effect give @s[scores={uhc.effect.resistance=2}] minecraft:resistance infinite 1 true
effect give @s[scores={uhc.effect.resistance=3}] minecraft:resistance infinite 2 true

# Night Vision
execute unless score #nzl uhc.gamemode matches 1 run effect give @s[tag=uhc.night_vision] minecraft:night_vision infinite 0 true

# Speed
execute if entity @s[tag=uhc.player,tag=!uhc.effect.speed,predicate=uhc:effect/speed] run function uhc:in_game/player/effect/speed
execute if entity @s[tag=uhc.player,tag=uhc.effect.speed,predicate=!uhc:effect/speed] run function uhc:in_game/player/effect/speed

# Strength
execute if entity @s[tag=uhc.player,tag=!uhc.effect.strength,predicate=uhc:effect/strength] run function uhc:in_game/player/effect/strength
execute if entity @s[tag=uhc.player,tag=uhc.effect.strength,predicate=!uhc:effect/strength] run function uhc:in_game/player/effect/strength

# Reset pour prochain tick
execute if score #pve uhc.data.temp matches ..0 run scoreboard players set @s uhc.effect.resistance 0

## Apparition / Réapparition
# Démarrage dans le ciel
execute in minecraft:overworld positioned 0 180 0 as @s[tag=uhc.player.start_in_the_sky] if entity @s[predicate=uhc:start_in_the_sky/on_ground,distance=25..] run function uhc:in_game/player/misc/on_ground_with_elytra
execute as @s[tag=uhc.player.start_in_the_sky] unless items entity @s armor.chest minecraft:elytra run function uhc:in_game/player/misc/on_ground_with_elytra
# Réapparition
execute as @s[scores={uhc.timer.respawn=1..}] run function uhc:in_game/player/lives_remove/respawn

## Vie en pourcentage
execute unless score #team_health uhc.scenario matches 1 if score #hp_100 uhc.data.setup matches 1.. store result score @s uhc.player.health.100 run data get entity @s Health 5

## Scenarios
execute if score #best_pve uhc.scenario matches 1 as @s[tag=uhc.scenario.best_pve] run function uhc:in_game/scenario/best_pve/tick
execute if score #biome_paranoia uhc.scenario matches 1 if score #game_progress uhc.game_progress matches 1 as @s[tag=uhc.player] run function uhc:in_game/scenario/biome_paranoia/by_colors
execute if score #biome_paranoia uhc.scenario matches 2 if score #game_progress uhc.game_progress matches 1 as @s[tag=uhc.player] run function uhc:in_game/scenario/biome_paranoia/by_nickname
execute if score #blood_diamond uhc.scenario matches 1.. as @s[scores={uhc.scenario.blood_diamond.deepslate=1..}] run function uhc:in_game/scenario/blood_diamond/
execute if score #blood_diamond uhc.scenario matches 1.. as @s[scores={uhc.scenario.blood_diamond.temp=1..}] run function uhc:in_game/scenario/blood_diamond/
execute if score #go_to_hell uhc.scenario matches 1 if score #shrink_1_time_left uhc.data.temp matches ..0 at @s[tag=uhc.player] run function uhc:in_game/scenario/go_to_hell/tick
execute if score #sky_high uhc.scenario matches 1 if score #shrink_1_time_left uhc.data.temp matches ..0 at @s[tag=uhc.player] run function uhc:in_game/scenario/sky_high/tick
execute if score #team_health uhc.scenario matches 1 if entity @s[gamemode=!spectator] unless score @s uhc.player.health = @s uhc.scenario.team_health.player run function uhc:in_game/scenario/team_health/
# Minerais
execute as @s[tag=uhc.player] run function uhc:in_game/player/misc/ores

## Scoreboard de dégâts
execute as @s[scores={uhc.player.damage_taken=1..}] run function uhc:in_game/player/pvp/damage_taken/
execute as @s[scores={uhc.player.damage_dealt.temp=1..}] run function uhc:in_game/player/pvp/damage_dealt/

## Loups
execute at @s if entity @n[type=minecraft:wolf,distance=..10] run function uhc:in_game/player/pvp/settings/wolf/

## Border TP
execute if score #shrink_1_time_left uhc.data.temp matches ..0 as @s[tag=uhc.player,predicate=!uhc:dimension/the_nether] at @s run function uhc:in_game/tp/border/coords
execute if score #map_height_timer uhc.data.temp matches ..0 if score #tick uhc.data.temp matches 0 if entity @s[tag=uhc.player,predicate=uhc:dimension/overworld] run function uhc:in_game/player/map_height/check_limit

## Joueur à respwan
execute as @s[tag=uhc.revive] run function uhc:in_game/player/spec/revive

## Spectateur
# Téléportation à un joueur
execute if score @s uhc.spec.tp matches 1.. run function uhc:in_game/player/spec/tp_to_player/
# Info spec
execute if score @s uhc.spec_info.all matches 1 run function uhc:in_game/player/spec/spec_info_trigger/all
execute if score @s uhc.spec_info.none matches 1 run function uhc:in_game/player/spec/spec_info_trigger/none
execute if score @s uhc.spec_info.blood_diamond matches 1 run function uhc:in_game/player/spec/spec_info_trigger/blood_diamond
execute if score @s uhc.spec_info.pve matches 1 run function uhc:in_game/player/spec/spec_info_trigger/pve
execute if score @s uhc.spec_info.pvp matches 1 run function uhc:in_game/player/spec/spec_info_trigger/pvp
