
#> uhc:in_game/player/death/killer
#
# @within			uhc:in_game/advancement/killed_by_player/
#
#
# @description		Fonction si morts ou kills à chaque ticks
#

function uhc:translation/in_game/player_death_killer
execute if score #death_message uhc.data.temp matches 1..3 unless score #death_message uhc.data.temp matches 2 run scoreboard players set @s uhc.player.death.message 0

# Attribution d'effets au killer
$execute if score #reward_kill_health uhc.data.temp matches 2.. run effect give @s minecraft:regeneration $(health) 1 true
execute if score #reward_kill_absorption uhc.data.setup matches 1 run effect give @s minecraft:absorption 10 0 true
execute if score #reward_kill_absorption uhc.data.setup matches 1 if score @s uhc.player.lives matches 1.. run attribute @s minecraft:max_absorption base set 4
execute if score #reward_kill_absorption uhc.data.setup matches 1 if score @s uhc.player.lives matches 1.. run scoreboard players set @s uhc.timer.absorption 11
execute if score #reward_kill_absorption uhc.data.setup matches 1 run effect clear @s minecraft:absorption
execute if score #experienceless uhc.scenario matches 0 run experience add @s 2 levels
execute if score #experienceless uhc.scenario matches 1 run experience add @s 6 levels

execute unless score #game_progress uhc.game_progress matches 2.. run scoreboard players add @s uhc.player.kills 1
execute unless score #game_progress uhc.game_progress matches 2.. run scoreboard players add @s uhc.player.kills.inv 1
execute unless score #game_progress uhc.game_progress matches 2.. run scoreboard players add @n[type=minecraft:marker,tag=UHC,distance=0..,predicate=uhc:id/team] uhc.team.kills 1

# Duplicat de l'armure du joueur mort non définitivement
execute as @p[tag=uhc.temp] if score @s uhc.player.lives matches 1.. if score #item_additional_armor uhc.data.setup matches 1.. run scoreboard players set @s uhc.player.death.armor_additional_item 1
