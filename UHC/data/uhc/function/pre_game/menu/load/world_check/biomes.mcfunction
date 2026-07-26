
#> uhc:pre_game/menu/load/world_check/biomes
#
# @within			uhc:pre_game/menu/selected/
#
#
# @description		Vérification des biomes
#

tag @s add host.check_biomes

gamerule minecraft:send_command_feedback true

tellraw @s [{"text":"["},{"text":"Desert","color":"#FFFF3F","click_event":{"action":"run_command","command":"/execute in minecraft:overworld positioned 0 0 0 run locate biome desert"}},{"text":"] ["},{"text":"Badlands","color":"#FF6F3F","click_event":{"action":"run_command","command":"/execute in minecraft:overworld positioned 0 0 0 run locate biome badlands"}},{"text":"] ["},{"text":"Warm ocean","color":"#3F6FFF","click_event":{"action":"run_command","command":"/execute in minecraft:overworld positioned 0 0 0 run locate biome warm_ocean"}},{"text":"]"}]
tellraw @s [{"text":"["},{"text":"Mangrove swamp","color":"#3F9F3F","click_event":{"action":"run_command","command":"/execute in minecraft:overworld positioned 0 0 0 run locate biome mangrove_swamp"}},{"text":"] ["},{"text":"Pale garden","color":"#9F9F9F","click_event":{"action":"run_command","command":"/execute in minecraft:overworld positioned 0 0 0 run locate biome pale_garden"}},{"text":"] ["},{"text":"Cherry Grove","color":"#FF6FFF","click_event":{"action":"run_command","command":"/execute in minecraft:overworld positioned 0 0 0 run locate biome cherry_grove"}},{"text":"]"}]
tellraw @s [{"text":"["},{"text":"Monument","color":"#3F9FFF","click_event":{"action":"run_command","command":"/execute in minecraft:overworld positioned 0 0 0 run locate structure monument"}},{"text":"]"}]
