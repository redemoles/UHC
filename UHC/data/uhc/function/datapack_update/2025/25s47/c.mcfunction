
#> uhc:datapack_update/2025/25s47/c
#
# @within			uhc:datapack_update/list
#
#
# @description		Mise à jour du datapack - UHC 25s48a
#

scoreboard objectives add uhc.player.mined.temp.coal minecraft.mined:minecraft.coal_ore
scoreboard objectives add uhc.player.mined.temp.coal_deepslate minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add uhc.player.mined.temp.copper minecraft.mined:minecraft.copper_ore
scoreboard objectives add uhc.player.mined.temp.copper_deepslate minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add uhc.player.mined.temp.iron minecraft.mined:minecraft.iron_ore
scoreboard objectives add uhc.player.mined.temp.iron_deepslate minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add uhc.player.mined.temp.gold minecraft.mined:minecraft.gold_ore
scoreboard objectives add uhc.player.mined.temp.gold_deepslate minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add uhc.player.mined.temp.lapis minecraft.mined:minecraft.lapis_ore
scoreboard objectives add uhc.player.mined.temp.lapis_deepslate minecraft.mined:minecraft.deepslate_lapis_ore
scoreboard objectives add uhc.player.mined.temp.redstone minecraft.mined:minecraft.redstone_ore
scoreboard objectives add uhc.player.mined.temp.redstone_deepslate minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add uhc.player.mined.temp.diamond minecraft.mined:minecraft.diamond_ore
scoreboard objectives add uhc.player.mined.temp.diamond_deepslate minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add uhc.player.mined.temp.raw_copper_block minecraft.mined:minecraft.raw_copper_block
scoreboard objectives add uhc.player.mined.temp.raw_gold_block minecraft.mined:minecraft.raw_gold_block
scoreboard objectives add uhc.player.mined.temp.raw_iron_block minecraft.mined:minecraft.raw_iron_block

execute if score #game_progress uhc.game_progress matches 1.. run scoreboard objectives add uhc.player.damage_dealt dummy [{"text":"Kills ","color":"#FFFFFF"},{"text":">","color":"#00C3DF","bold":true},{"text":" [Dégâts émis]*10","color":"#FFFFFF"}]
execute if score #game_progress uhc.game_progress matches 1.. run scoreboard objectives add uhc.player.damage_taken minecraft.custom:minecraft.damage_taken
execute if score #game_progress uhc.game_progress matches 1.. run scoreboard objectives add uhc.player.damage_taken.pve minecraft.custom:minecraft.damage_taken
execute if score #game_progress uhc.game_progress matches 1.. run scoreboard objectives add uhc.player.damage_taken.pvp dummy
execute if score #game_progress uhc.game_progress matches 1.. run scoreboard objectives add uhc.player.damage_taken.temp minecraft.custom:minecraft.damage_taken
execute if score #game_progress uhc.game_progress matches 1.. run scoreboard players operation @s uhc.player.damage_dealt = @a bhc.kills.damage_dealt.inv

scoreboard players set @a uhc.player.mined.coal 0
scoreboard players set @a uhc.player.mined.copper 0
scoreboard players set @a uhc.player.mined.iron 0
scoreboard players set @a uhc.player.mined.gold 0
scoreboard players set @a uhc.player.mined.lapis 0
scoreboard players set @a uhc.player.mined.redstone 0
scoreboard players set @a uhc.player.mined.diamond 0

scoreboard players set @a uhc.player.damage_dealt 0
scoreboard players set @a uhc.player.damage_taken 0
scoreboard players set @a uhc.player.damage_taken.pve 0
scoreboard players set @a uhc.player.damage_taken.pvp 0
scoreboard players set @a uhc.player.damage_taken.temp 0

scoreboard players set #hp_chat uhc.data.setup 0

scoreboard players set #update uhc.data.update 25473
