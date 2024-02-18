# reset the player counts
scoreboard players set NorthCount playerCount 0
scoreboard players set SouthCount playerCount 0
scoreboard players set NorthAttackers attackerCount 0
scoreboard players set SouthAttackers attackerCount 0

# count the number of players on each team
execute as @a[team=north] run scoreboard players add NorthCount playerCount 1
execute as @a[team=south] run scoreboard players add SouthCount playerCount 1

# count the number of attackers within 350 blocks of the enemy territory
execute as @a[team=north,tag=attacker,distance=..350,x=0,y=70,z=350] run scoreboard players add NorthAttackers attackerCount 1
execute as @a[team=south,tag=attacker,distance=..350,x=0,y=70,z=-350] run scoreboard players add SouthAttackers attackerCount 1

# if the number of north attackers exceeds the number of south players, teleport the excess attackers back
execute if score NorthAttackers attackerCount > SouthCount playerCount run tp @a[team=north,scores={attackerCount=1..},distance=300..350,x=0,y=70,z=-350,limit=1] 0 70 350

# if the number of south attackers exceeds the number of north players, teleport the excess attackers back
execute if score SouthAttackers attackerCount > NorthCount playerCount run tp @a[team=south,scores={attackerCount=1..},distance=300..350,x=0,y=70,z=350,limit=1] 0 70 -350

# loop function every 5 ticks
schedule function skyattack:loops/check_playercount 5t
