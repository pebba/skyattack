# gives the nearest attacker the carrier tag if the enemies beacon is broken and there is no carrier
execute unless entity @a[tag=carrier] positioned 0 70 350 if block ~ ~ ~ minecraft:air run tag @a[tag=attacker,team=north,sort=nearest,limit=1] add carrier
execute unless entity @a[tag=carrier] positioned 0 70 -350 if block ~ ~ ~ minecraft:air run tag @a[tag=attacker,team=south,sort=nearest,limit=1] add carrier

# give the carrier special effects
effect give @a[tag=carrier] minecraft:glowing 1 0 true
effect give @a[tag=carrier] minecraft:slowness 1 0 true

# output message that the beacon has been stolen only once
execute as @a[tag=carrier] run tellraw @a[tag=!messaged_stolen] "§7[§b§lSkyAttack§7] §r§cThe beacon has been stolen!"
execute as @a[tag=carrier,tag=!messaged_stolen] run playsound minecraft:entity.wither.death master @a ~ ~ ~ 100
execute as @a[tag=carrier] run tag @a add messaged_stolen

# check if the carrier is dead
execute as @a[tag=carrier] if entity @s[scores={timeSinceDeath=..20}] run function skyattack:raid/dead_carrier

# check if the carrier returned back home = victory
execute as @a[tag=carrier,team=north,x=-1,y=69,z=-351,dx=2,dy=2,dz=2] run function skyattack:game_over
execute as @a[tag=carrier,team=south,x=-1,y=69,z=349,dx=2,dy=2,dz=2] run function skyattack:game_over

# loop function every 5 ticks
schedule function skyattack:raid/objective 5t
