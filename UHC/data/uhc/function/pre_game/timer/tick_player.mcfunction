
#> uhc:pre_game/timer/tick_player
#
# @within			uhc:pre_game/timer/tick
#
#
# @description		Commandes pre-game en tick pour joueurs
#

scoreboard players operation #team uhc.id.team = @s uhc.id.team
execute unless score @s uhc.player.data.check matches 1 run function uhc:in_game/player/data/main

# Joueur hors du lobby
execute as @a[predicate=uhc:effect/absorption] run effect clear @s minecraft:absorption
execute unless score @s uhc.player.online matches 1 run function uhc:pre_game/player_and_team/new_player
execute at @s if entity @s[predicate=uhc:dimension/uhc_lobby,scores={uhc.player.y=..-1}] run function uhc:pre_game/player_and_team/in_void

# Reconnexion d'un joueur
execute if score @s uhc.player.disconnect matches 1.. run function uhc:pre_game/player_and_team/reconnect/

# Changement grade host
execute if entity @s[tag=host,tag=!uhc.host] run function uhc:pre_game/timer/host_grade/host
execute if entity @s[tag=!host,tag=uhc.host] run function uhc:pre_game/timer/host_grade/player

# Hotbar
execute as @s[tag=!mgs.tc.player,tag=!mgs.tc.spec,tag=!mgs.jump] run function uhc:translation/hotbar/lobby_main
execute unless entity @s[tag=!mgs.tc.player,tag=!mgs.tc.spec] run function lobby:mini_games/tc/hotbar/
execute unless entity @s[tag=!mgs.jump] run function lobby:mini_games/rjg/hotbar/root

# Modification des items au démarrage et des items additionnels à la mort d'un joueur
execute if score @s[tag=uhc.host,gamemode=adventure] uhc.menu.settings.inventory matches 2 run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_starter/validate
execute if score @s[tag=uhc.host,gamemode=adventure] uhc.menu.settings.inventory matches 3 run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_ironman/validate
execute if score @s[tag=uhc.host,gamemode=adventure] uhc.menu.settings.inventory matches 4 run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_notch_totem/validate
execute if score @s[tag=uhc.host,gamemode=adventure] uhc.menu.settings.inventory matches 5 run function uhc:pre_game/menu/load/settings/inventory/start_and_rewards/item_additional/validate

# Vie en pourcentage
execute if entity @s[gamemode=!spectator] run function uhc:in_game/player/misc/health/default

# Vérification des spawns
execute as @s[scores={uhc.spawn.check=0..}] in minecraft:overworld run function uhc:pre_game/world_check/spawns

# Night Vision
effect give @s[tag=uhc.night_vision,tag=!mgs.backroom] minecraft:night_vision infinite 0 true
effect clear @s[tag=!uhc.night_vision,tag=!mgs.backroom] minecraft:night_vision
