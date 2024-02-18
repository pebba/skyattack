# check for all necessary items in radius of 1 block and summon item

# use all items for intruder radar
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:4b}}] at @s as @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s as @e[type=item,nbt={Item:{id:"minecraft:green_dye",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s as @e[type=item,nbt={Item:{id:"minecraft:quartz",Count:2b}},limit=1,sort=nearest,distance=0..1] at @s as @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:3b}},limit=1,sort=nearest,distance=0..1] at @s run summon item ~ ~0.1 ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:3570001,radar:1b,display:{Name:'{"text":"Intruder Radar","italic":false,"color": "green"}',Lore:['{"text":"Cooldown: 10 Minutes","italic":false,"color":"white"}']},EntityTag:{id:"armor_stand",Invisible:1b,Tags:["radar"]}}},Tags:["fresh_craft"],CustomNameVisible:1b}

# remove all dropped items used for crafting
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:4b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:green_dye",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:quartz",Count:2b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:redstone",Count:3b}},sort=nearest,limit=1]

# special sound for crafting
execute as @e[tag=fresh_craft] at @s run playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 1 1

# create smoke effect
execute at @e[tag=fresh_craft] run particle minecraft:large_smoke ~ ~ ~ 0.5 0.5 0.5 0.05 100

# clear tag from crafted item
execute as @e[tag=fresh_craft] run tag @s remove fresh_craft

# loop function every 5 ticks
schedule function skyattack:floor/radar 5t
