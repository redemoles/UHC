
#> nzl:reset/sb
#
# @within			#minecraft:load
#
#
# @description		Function executed when the datapack is loaded
#

scoreboard objectives remove nzl.data
scoreboard objectives remove nzl.sb.display

scoreboard objectives remove nzl.type.available
scoreboard objectives remove nzl.type.display
scoreboard objectives remove nzl.type.select
scoreboard objectives remove nzl.type.evolve
scoreboard objectives remove nzl.type.level
scoreboard objectives remove nzl.type.player

scoreboard objectives remove nzl.stats.abso
scoreboard objectives remove nzl.stats.attack
scoreboard objectives remove nzl.stats.defense
scoreboard objectives remove nzl.stats.attack_special
scoreboard objectives remove nzl.stats.speed
scoreboard objectives remove nzl.stats.mining_speed
scoreboard objectives remove nzl.stats.attack_speed
scoreboard objectives remove nzl.stats.knockback_resistance
scoreboard objectives remove nzl.stats.accuracy
scoreboard objectives remove nzl.stats.flinch
scoreboard objectives remove nzl.stats.poison

scoreboard objectives remove nzl.dragon.malus
scoreboard objectives remove nzl.statut.glowing
scoreboard objectives remove nzl.statut.freeze
scoreboard objectives remove nzl.statut.paralysis

scoreboard objectives remove nzl.attack.cooldown
scoreboard objectives remove nzl.attack.cooldown.01
scoreboard objectives remove nzl.attack.cooldown.02
scoreboard objectives remove nzl.attack.cooldown.03
scoreboard objectives remove nzl.attack.cooldown.04
scoreboard objectives remove nzl.attack.cooldown.05
scoreboard objectives remove nzl.attack.cooldown.06
scoreboard objectives remove nzl.attack.cooldown.07
scoreboard objectives remove nzl.attack.cooldown.08
scoreboard objectives remove nzl.attack.cooldown.09
scoreboard objectives remove nzl.attack.cooldown.10
scoreboard objectives remove nzl.attack.cooldown.11
scoreboard objectives remove nzl.attack.cooldown.12
scoreboard objectives remove nzl.attack.cooldown.13
scoreboard objectives remove nzl.attack.cooldown.14
scoreboard objectives remove nzl.attack.cooldown.15
scoreboard objectives remove nzl.attack.cooldown.16
scoreboard objectives remove nzl.attack.cooldown.17
scoreboard objectives remove nzl.attack.cooldown.18
scoreboard objectives remove nzl.attack.length
scoreboard objectives remove nzl.attack.length.01
scoreboard objectives remove nzl.attack.length.02
scoreboard objectives remove nzl.attack.length.03
scoreboard objectives remove nzl.attack.length.04
scoreboard objectives remove nzl.attack.length.05
scoreboard objectives remove nzl.attack.length.06
scoreboard objectives remove nzl.attack.length.07
scoreboard objectives remove nzl.attack.length.08
scoreboard objectives remove nzl.attack.length.09
scoreboard objectives remove nzl.attack.length.10
scoreboard objectives remove nzl.attack.length.11
scoreboard objectives remove nzl.attack.length.12
scoreboard objectives remove nzl.attack.length.13
scoreboard objectives remove nzl.attack.length.14
scoreboard objectives remove nzl.attack.length.15
scoreboard objectives remove nzl.attack.length.16
scoreboard objectives remove nzl.attack.length.17
scoreboard objectives remove nzl.attack.length.18
scoreboard objectives remove nzl.attack.no_flood
scoreboard objectives remove nzl.attack.right_click

scoreboard objectives remove nzl.item1
scoreboard objectives remove nzl.item2
scoreboard objectives remove nzl.item3
scoreboard objectives remove nzl.item4
scoreboard objectives remove nzl.item5
scoreboard objectives remove nzl.goal.iron_golem
scoreboard objectives remove nzl.goal.mobs_killed
scoreboard objectives remove nzl.goal.aquatics_killed
scoreboard objectives remove nzl.goal.creepers_killed
scoreboard objectives remove nzl.goal.zombies_killed
scoreboard objectives remove nzl.player.inventory
scoreboard objectives remove nzl.player.level

scoreboard objectives remove nzl.weather.rain
scoreboard objectives remove nzl.weather.thunder

scoreboard objectives remove nzl.sound.evolve

scoreboard objectives add nzl.data dummy
scoreboard objectives add nzl.sb.display dummy

scoreboard objectives add nzl.type.available dummy
scoreboard objectives add nzl.type.display dummy "Disponible"
scoreboard objectives add nzl.type.select trigger
scoreboard objectives add nzl.type.evolve trigger
scoreboard objectives add nzl.type.level dummy
scoreboard objectives add nzl.type.player dummy

scoreboard objectives add nzl.stats.abso dummy
scoreboard objectives add nzl.stats.attack dummy
scoreboard objectives add nzl.stats.defense dummy
scoreboard objectives add nzl.stats.attack_special dummy
scoreboard objectives add nzl.stats.speed dummy
scoreboard objectives add nzl.stats.mining_speed dummy
scoreboard objectives add nzl.stats.attack_speed dummy
scoreboard objectives add nzl.stats.knockback_resistance dummy
scoreboard objectives add nzl.stats.accuracy dummy
scoreboard objectives add nzl.stats.flinch dummy
scoreboard objectives add nzl.stats.poison dummy

scoreboard objectives add nzl.dragon.malus dummy
scoreboard objectives add nzl.statut.glowing dummy
scoreboard objectives add nzl.statut.freeze dummy
scoreboard objectives add nzl.statut.paralysis dummy

scoreboard objectives add nzl.attack.cooldown dummy
scoreboard objectives add nzl.attack.cooldown.01 dummy
scoreboard objectives add nzl.attack.cooldown.02 dummy
scoreboard objectives add nzl.attack.cooldown.03 dummy
scoreboard objectives add nzl.attack.cooldown.04 dummy
scoreboard objectives add nzl.attack.cooldown.05 dummy
scoreboard objectives add nzl.attack.cooldown.06 dummy
scoreboard objectives add nzl.attack.cooldown.07 dummy
scoreboard objectives add nzl.attack.cooldown.08 dummy
scoreboard objectives add nzl.attack.cooldown.09 dummy
scoreboard objectives add nzl.attack.cooldown.10 dummy
scoreboard objectives add nzl.attack.cooldown.11 dummy
scoreboard objectives add nzl.attack.cooldown.12 dummy
scoreboard objectives add nzl.attack.cooldown.13 dummy
scoreboard objectives add nzl.attack.cooldown.14 dummy
scoreboard objectives add nzl.attack.cooldown.15 dummy
scoreboard objectives add nzl.attack.cooldown.16 dummy
scoreboard objectives add nzl.attack.cooldown.17 dummy
scoreboard objectives add nzl.attack.cooldown.18 dummy
scoreboard objectives add nzl.attack.length dummy
scoreboard objectives add nzl.attack.length.01 dummy
scoreboard objectives add nzl.attack.length.02 dummy
scoreboard objectives add nzl.attack.length.03 dummy
scoreboard objectives add nzl.attack.length.04 dummy
scoreboard objectives add nzl.attack.length.05 dummy
scoreboard objectives add nzl.attack.length.06 dummy
scoreboard objectives add nzl.attack.length.07 dummy
scoreboard objectives add nzl.attack.length.08 dummy
scoreboard objectives add nzl.attack.length.09 dummy
scoreboard objectives add nzl.attack.length.10 dummy
scoreboard objectives add nzl.attack.length.11 dummy
scoreboard objectives add nzl.attack.length.12 dummy
scoreboard objectives add nzl.attack.length.13 dummy
scoreboard objectives add nzl.attack.length.14 dummy
scoreboard objectives add nzl.attack.length.15 dummy
scoreboard objectives add nzl.attack.length.16 dummy
scoreboard objectives add nzl.attack.length.17 dummy
scoreboard objectives add nzl.attack.length.18 dummy
scoreboard objectives add nzl.attack.no_flood dummy
scoreboard objectives add nzl.attack.right_click minecraft.used:minecraft.snowball

scoreboard objectives add nzl.item1 dummy
scoreboard objectives add nzl.item2 dummy
scoreboard objectives add nzl.item3 dummy
scoreboard objectives add nzl.item4 dummy
scoreboard objectives add nzl.item5 dummy
scoreboard objectives add nzl.goal.iron_golem dummy
scoreboard objectives add nzl.goal.mobs_killed dummy
scoreboard objectives add nzl.goal.aquatics_killed dummy
scoreboard objectives add nzl.goal.creepers_killed minecraft.killed:minecraft.creeper
scoreboard objectives add nzl.goal.zombies_killed minecraft.killed:minecraft.zombie
scoreboard objectives add nzl.player.inventory dummy
scoreboard objectives add nzl.player.level level

scoreboard objectives add nzl.weather.rain dummy
scoreboard objectives add nzl.weather.thunder dummy

scoreboard objectives add nzl.sound.evolve dummy

scoreboard players set #type_start nzl.data 0

function nzl:reset/team

tag @a remove nzl.type.01
tag @a remove nzl.type.02
tag @a remove nzl.type.03
tag @a remove nzl.type.04
tag @a remove nzl.type.05
tag @a remove nzl.type.06
tag @a remove nzl.type.07
tag @a remove nzl.type.08
tag @a remove nzl.type.09
tag @a remove nzl.type.10
tag @a remove nzl.type.11
tag @a remove nzl.type.12
tag @a remove nzl.type.13
tag @a remove nzl.type.14
tag @a remove nzl.type.15
tag @a remove nzl.type.16
tag @a remove nzl.type.17
tag @a remove nzl.type.18

function nzl:reset/text/

scoreboard players set #second_base_10 nzl.data -1
scoreboard players set #second_base_20 nzl.data -1
