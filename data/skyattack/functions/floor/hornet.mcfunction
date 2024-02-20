# check for all necessary items in radius of 1 block and summon spawn egg

# use all items for flying machine + red dye for machine facing north
execute as @e[type=item,nbt={Item:{id:"minecraft:slime_block",Count:8b}}] at @s as @e[type=item,nbt={Item:{id:"minecraft:honey_block",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s as @e[type=item,nbt={Item:{id:"minecraft:sticky_piston",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s as @e[type=item,nbt={Item:{id:"minecraft:piston",Count:3b}},limit=1,sort=nearest,distance=0..1] at @s as @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:3b}},limit=1,sort=nearest,distance=0..1] at @s as @e[type=item,nbt={Item:{id:"minecraft:red_dye",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run summon item ~ ~0.1 ~ {Item:{id:"minecraft:ocelot_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Hornet North","italic":false,"color": "yellow"}',Lore:['{"text":"Speed: 3.3 m/s","italic":false,"color":"white"}']},EntityTag:{id:"armor_stand",Invisible:1b,Tags:["hornet_n"]}}},Tags:["fresh_craft"],HasVisualFire:1b,CustomNameVisible:1b,CustomName:'{"text":"Hornet North","italic":false,"color": "yellow"}'}

# use all items for flying machine + yellow dye for machine facing south
execute as @e[type=item,nbt={Item:{id:"minecraft:slime_block",Count:8b}}] at @s as @e[type=item,nbt={Item:{id:"minecraft:honey_block",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s as @e[type=item,nbt={Item:{id:"minecraft:sticky_piston",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s as @e[type=item,nbt={Item:{id:"minecraft:piston",Count:3b}},limit=1,sort=nearest,distance=0..1] at @s as @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:3b}},limit=1,sort=nearest,distance=0..1] at @s as @e[type=item,nbt={Item:{id:"minecraft:yellow_dye",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run summon item ~ ~0.1 ~ {Item:{id:"minecraft:ocelot_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Hornet South","italic":false,"color": "yellow"}',Lore:['{"text":"Speed: 3.3 m/s","italic":false,"color":"white"}']},EntityTag:{id:"armor_stand",Invisible:1b,Tags:["hornet_s"]}}},Tags:["fresh_craft"],HasVisualFire:1b,CustomNameVisible:1b,CustomName:'{"text":"Hornet South","italic":false,"color": "yellow"}'}

# remove all dropped items used for crafting
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:slime_block",Count:8b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:honey_block",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:sticky_piston",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:piston",Count:3b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:3b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:red_dye",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:yellow_dye",Count:1b}},sort=nearest,limit=1]

# special sound for crafting
execute as @e[tag=fresh_craft] at @s run playsound minecraft:block.smithing_table.use master @a ~ ~ ~ 1 1

# clear tag from crafted item
execute as @e[tag=fresh_craft] run tag @s remove fresh_craft

# loop function every 5 ticks
schedule function skyattack:floor/hornet 5t
