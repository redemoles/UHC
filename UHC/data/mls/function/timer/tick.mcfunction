
#> mls:timer/tick
#
# @within			uhc:in_game/timer/tick
#
#
# @description		tock
#

# Activation des taupes
execute unless score #annonce mls.player.team matches 1 run function mls:team/annonce

# Détection message à envoyer
execute as @a[tag=uhc.player,scores={mls.player.team=1..}] if items entity @s weapon.mainhand written_book[custom_data={uhc.scenario.moles:1}] run function mls:chat/storage

# Livre de message et kits
execute as @a[tag=uhc.player,scores={mls.player.team=0}] run clear @s writable_book[custom_data={uhc.scenario.moles:1}]
execute as @a[tag=uhc.player,scores={mls.player.team=1}] run function mls:inventory/missing_book
execute as @e[type=item,tag=!moles.item.check] run function mls:timer/clear_item

# Golden Heads
execute as @a[tag=uhc.player] if items entity @s weapon.mainhand player_head[minecraft:item_name=[{"text":"Golden Head","italic":false,"color":"#FFE73F"}]] unless items entity @s weapon.mainhand player_head[minecraft:food={nutrition:4,saturation:9.6,can_always_eat:true}] run item modify entity @s weapon.mainhand {"function":"minecraft:set_components","components":{"minecraft:lore":[[{"text":"Régénération II (0:10)","italic":false,"color":"blue"}],[{"text":"Absorption (2:00)","italic":false,"color":"blue"}],[{"text":"Conduit Power (3:00)","italic":false,"color":"blue"}]],"minecraft:food":{nutrition:4,saturation:9.6,can_always_eat:true},"minecraft:consumable":{on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:regeneration",amplifier:1,duration:200,show_particles:true},{id:"minecraft:absorption",amplifier:0,duration:2400,show_particles:true},{id:"minecraft:conduit_power",amplifier:0,duration:3600,show_particles:true}]}]}}}
execute as @a[tag=uhc.player] if items entity @s weapon.offhand player_head[minecraft:item_name=[{"text":"Golden Head","italic":false,"color":"#FFE73F"}]] unless items entity @s weapon.offhand player_head[minecraft:food={nutrition:4,saturation:9.6,can_always_eat:true}] run item modify entity @s weapon.offhand {"function":"minecraft:set_components","components":{"minecraft:lore":[[{"text":"Régénération II (0:10)","italic":false,"color":"blue"}],[{"text":"Absorption (2:00)","italic":false,"color":"blue"}],[{"text":"Conduit Power (3:00)","italic":false,"color":"blue"}]],"minecraft:food":{nutrition:4,saturation:9.6,can_always_eat:true},"minecraft:consumable":{on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:regeneration",amplifier:1,duration:200,show_particles:true},{id:"minecraft:absorption",amplifier:0,duration:2400,show_particles:true},{id:"minecraft:conduit_power",amplifier:0,duration:3600,show_particles:true}]}]}}}
