
#> nzl:timer/sound/evolve
#
# @within			nzl:timer/tick
#
#
# @description		Function executed every tick
#

playsound minecraft:block.note_block.harp master @s[scores={nzl.sound.evolve=1}] ~ ~ ~ 0.5 0.89
playsound minecraft:block.note_block.harp master @s[scores={nzl.sound.evolve=4}] ~ ~ ~ 0.5 0.89
playsound minecraft:block.note_block.harp master @s[scores={nzl.sound.evolve=7}] ~ ~ ~ 0.5 0.89
playsound minecraft:block.note_block.harp master @s[scores={nzl.sound.evolve=10}] ~ ~ ~ 0.5 1.33
playsound minecraft:block.note_block.bell master @s[scores={nzl.sound.evolve=1}] ~ ~ ~ 0.5 0.89
playsound minecraft:block.note_block.bell master @s[scores={nzl.sound.evolve=4}] ~ ~ ~ 0.5 0.89
playsound minecraft:block.note_block.bell master @s[scores={nzl.sound.evolve=7}] ~ ~ ~ 0.5 0.89
playsound minecraft:block.note_block.chime master @s[scores={nzl.sound.evolve=10}] ~ ~ ~ 0.5 1.33
scoreboard players add @s nzl.sound.evolve 1
scoreboard players set @s[scores={nzl.sound.evolve=20}] nzl.sound.evolve 0
