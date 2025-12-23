
#> mls:chat/storage
#
# @within			mls:storage
# 
#
# @description		Récupération du message à envoyer
#

scoreboard players operation #team mls.player.team = @s mls.player.team

tag @s add mls.chat
data modify storage uhc:temp chat set from entity @s SelectedItem
data modify storage uhc:temp chat set from storage uhc:temp chat.components.minecraft:written_book_content.pages.[0].raw
scoreboard players set #command mls.command 0
function mls:chat/command with storage uhc:temp
execute if score #command mls.command matches 0 run function mls:chat/in_chat with storage uhc:temp
tag @s remove mls.chat

item replace entity @s weapon.mainhand with minecraft:writable_book
execute if score @s uhc.player.lang matches 061801 run item replace entity @s weapon.mainhand with minecraft:writable_book[minecraft:item_name=[{"text":"Envoyer un message","bold":true}],minecraft:custom_data={uhc.scenario.moles:1},minecraft:writable_book_content={"pages":[{"raw":""}]}]
execute if score @s uhc.player.lang matches 051407 run item replace entity @s weapon.mainhand with minecraft:writable_book[minecraft:item_name=[{"text":"Send a message","bold":true}],minecraft:custom_data={uhc.scenario.moles:1},minecraft:writable_book_content={"pages":[{"raw":""}]}]
