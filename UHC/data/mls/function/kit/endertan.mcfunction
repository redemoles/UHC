
#> mls:kit/endertan
#
# @within			mls:kit/
# 
#
# @description		Don du kit endertan
#

# fire resistance + regen / feather falling / enderpearls

give @s minecraft:splash_potion[minecraft:custom_name=[{"text":"Splash Potion of Regeneration & Fire Resistance","italic":false}],potion_contents={custom_color:13582287,custom_effects:[{id:"minecraft:regeneration",amplifier:0b,duration:600,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:0b,duration:3600,show_particles:0b}]}] 1
give @s enchanted_book[stored_enchantments={"minecraft:feather_falling":4}]
give @s ender_pearl 3
