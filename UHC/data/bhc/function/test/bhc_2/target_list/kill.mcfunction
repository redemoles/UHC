
#> bhc:test/bhc_2/target_list/kill
#
# @within			bhc:timer/tick
#
#
# @description		Simule la disparition d'une équipe
#

scoreboard players enable @s bhc.test.target_kill

scoreboard players remove #team uhc.data.temp.inv 1
execute unless score #tracker_ennemies uhc.data.temp matches 1.. run scoreboard players set #tracker_ennemies uhc.data.temp 1

execute if entity @p[scores={bhc.test.target_kill=01}] run scoreboard players set @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=01}] uhc.player.lives 0
execute if entity @p[scores={bhc.test.target_kill=01}] as @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=01}] run function bhc:scenario/02/target/death/team_out
execute if entity @p[scores={bhc.test.target_kill=01}] run return run scoreboard players set @s bhc.test.target_kill 0

execute if entity @p[scores={bhc.test.target_kill=02}] run scoreboard players set @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=02}] uhc.player.lives 0
execute if entity @p[scores={bhc.test.target_kill=02}] as @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=02}] run function bhc:scenario/02/target/death/team_out
execute if entity @p[scores={bhc.test.target_kill=02}] run return run scoreboard players set @s bhc.test.target_kill 0

execute if entity @p[scores={bhc.test.target_kill=03}] run scoreboard players set @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=03}] uhc.player.lives 0
execute if entity @p[scores={bhc.test.target_kill=03}] as @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=03}] run function bhc:scenario/02/target/death/team_out
execute if entity @p[scores={bhc.test.target_kill=03}] run return run scoreboard players set @s bhc.test.target_kill 0

execute if entity @p[scores={bhc.test.target_kill=04}] run scoreboard players set @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=04}] uhc.player.lives 0
execute if entity @p[scores={bhc.test.target_kill=04}] as @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=04}] run function bhc:scenario/02/target/death/team_out
execute if entity @p[scores={bhc.test.target_kill=04}] run return run scoreboard players set @s bhc.test.target_kill 0

execute if entity @p[scores={bhc.test.target_kill=05}] run scoreboard players set @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=05}] uhc.player.lives 0
execute if entity @p[scores={bhc.test.target_kill=05}] as @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=05}] run function bhc:scenario/02/target/death/team_out
execute if entity @p[scores={bhc.test.target_kill=05}] run return run scoreboard players set @s bhc.test.target_kill 0

execute if entity @p[scores={bhc.test.target_kill=06}] run scoreboard players set @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=06}] uhc.player.lives 0
execute if entity @p[scores={bhc.test.target_kill=06}] as @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=06}] run function bhc:scenario/02/target/death/team_out
execute if entity @p[scores={bhc.test.target_kill=06}] run return run scoreboard players set @s bhc.test.target_kill 0

execute if entity @p[scores={bhc.test.target_kill=07}] run scoreboard players set @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=07}] uhc.player.lives 0
execute if entity @p[scores={bhc.test.target_kill=07}] as @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=07}] run function bhc:scenario/02/target/death/team_out
execute if entity @p[scores={bhc.test.target_kill=07}] run return run scoreboard players set @s bhc.test.target_kill 0

execute if entity @p[scores={bhc.test.target_kill=08}] run scoreboard players set @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=08}] uhc.player.lives 0
execute if entity @p[scores={bhc.test.target_kill=08}] as @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=08}] run function bhc:scenario/02/target/death/team_out
execute if entity @p[scores={bhc.test.target_kill=08}] run return run scoreboard players set @s bhc.test.target_kill 0

execute if entity @p[scores={bhc.test.target_kill=09}] run scoreboard players set @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=09}] uhc.player.lives 0
execute if entity @p[scores={bhc.test.target_kill=09}] as @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=09}] run function bhc:scenario/02/target/death/team_out
execute if entity @p[scores={bhc.test.target_kill=09}] run return run scoreboard players set @s bhc.test.target_kill 0

execute if entity @p[scores={bhc.test.target_kill=10}] run scoreboard players set @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=10}] uhc.player.lives 0
execute if entity @p[scores={bhc.test.target_kill=10}] as @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=10}] run function bhc:scenario/02/target/death/team_out
execute if entity @p[scores={bhc.test.target_kill=10}] run return run scoreboard players set @s bhc.test.target_kill 0

execute if entity @p[scores={bhc.test.target_kill=11}] run scoreboard players set @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=11}] uhc.player.lives 0
execute if entity @p[scores={bhc.test.target_kill=11}] as @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=11}] run function bhc:scenario/02/target/death/team_out
execute if entity @p[scores={bhc.test.target_kill=11}] run return run scoreboard players set @s bhc.test.target_kill 0

execute if entity @p[scores={bhc.test.target_kill=12}] run scoreboard players set @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=12}] uhc.player.lives 0
execute if entity @p[scores={bhc.test.target_kill=12}] as @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=12}] run function bhc:scenario/02/target/death/team_out
execute if entity @p[scores={bhc.test.target_kill=12}] run return run scoreboard players set @s bhc.test.target_kill 0

execute if entity @p[scores={bhc.test.target_kill=13}] run scoreboard players set @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=13}] uhc.player.lives 0
execute if entity @p[scores={bhc.test.target_kill=13}] as @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=13}] run function bhc:scenario/02/target/death/team_out
execute if entity @p[scores={bhc.test.target_kill=13}] run return run scoreboard players set @s bhc.test.target_kill 0

execute if entity @p[scores={bhc.test.target_kill=14}] run scoreboard players set @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=14}] uhc.player.lives 0
execute if entity @p[scores={bhc.test.target_kill=14}] as @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=14}] run function bhc:scenario/02/target/death/team_out
execute if entity @p[scores={bhc.test.target_kill=14}] run return run scoreboard players set @s bhc.test.target_kill 0

execute if entity @p[scores={bhc.test.target_kill=15}] run scoreboard players set @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=15}] uhc.player.lives 0
execute if entity @p[scores={bhc.test.target_kill=15}] as @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=15}] run function bhc:scenario/02/target/death/team_out
execute if entity @p[scores={bhc.test.target_kill=15}] run return run scoreboard players set @s bhc.test.target_kill 0

execute if entity @p[scores={bhc.test.target_kill=16}] run scoreboard players set @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=16}] uhc.player.lives 0
execute if entity @p[scores={bhc.test.target_kill=16}] as @n[type=marker,tag=UHC,distance=0..,scores={uhc.id.team=16}] run function bhc:scenario/02/target/death/team_out
execute if entity @p[scores={bhc.test.target_kill=16}] run return run scoreboard players set @s bhc.test.target_kill 0
