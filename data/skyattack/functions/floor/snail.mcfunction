# check for all necessary items in radius of 1 block and summon spawn egg

# use all items for flying machine + red dye for machine facing north
execute as @e[type=item,nbt={Item:{id:"minecraft:slime_block",Count:2b}}] at @s as @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:2b}},limit=1,sort=nearest,distance=0..1] at @s as @e[type=item,nbt={Item:{id:"minecraft:piston",Count:2b}},limit=1,sort=nearest,distance=0..1] as @e[type=item,nbt={Item:{id:"minecraft:sticky_piston",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s as @e[type=item,nbt={Item:{id:"minecraft:red_dye",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run summon item ~ ~0.1 ~ {Item:{id:"minecraft:zombie_horse_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Snail North","italic":false,"color": "dark_green"}',Lore:['{"text":"Speed: 1.6 m/s","italic":false,"color":"white"}']},EntityTag:{id:"armor_stand",Invisible:1b,Tags:["snail_n"]}}},Tags:["fresh_craft"],HasVisualFire:1b,CustomNameVisible:1b,CustomName:'{"text":"Snail North","italic":false,"color": "dark_green"}'}

# use all items for flying machine + yellow dye for machine facing south
execute as @e[type=item,nbt={Item:{id:"minecraft:slime_block",Count:2b}}] at @s as @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:2b}},limit=1,sort=nearest,distance=0..1] at @s as @e[type=item,nbt={Item:{id:"minecraft:piston",Count:2b}},limit=1,sort=nearest,distance=0..1] as @e[type=item,nbt={Item:{id:"minecraft:sticky_piston",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s as @e[type=item,nbt={Item:{id:"minecraft:yellow_dye",Count:1b}},limit=1,sort=nearest,distance=0..1] at @s run summon item ~ ~0.1 ~ {Item:{id:"minecraft:zombie_horse_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Snail South","italic":false,"color": "dark_green"}',Lore:['{"text":"Speed: 1.6 m/s","italic":false,"color":"white"}']},EntityTag:{id:"armor_stand",Invisible:1b,Tags:["snail_s"]}}},Tags:["fresh_craft"],HasVisualFire:1b,CustomNameVisible:1b,CustomName:'{"text":"Snail South","italic":false,"color": "dark_green"}'}

# remove all dropped items used for crafting
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:slime_block",Count:2b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:2b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:piston",Count:2b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:sticky_piston",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:red_dye",Count:1b}},sort=nearest,limit=1]
execute as @e[tag=fresh_craft] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:yellow_dye",Count:1b}},sort=nearest,limit=1]

# special sound for crafting
execute as @e[tag=fresh_craft] at @s run playsound minecraft:block.smithing_table.use master @a ~ ~ ~ 1 1

# clear tag from crafted item
execute as @e[tag=fresh_craft] run tag @s remove fresh_craft

# loop function every 5 ticks
schedule function skyattack:floor/snail 5t
