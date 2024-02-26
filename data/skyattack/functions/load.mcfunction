# successfully reloaded message
tellraw @a "§7[§b§lSkyAttack§7] §r§aDatapack successfully reloaded!"

# initialize the worldspawn
setworldspawn 0 65 0

# initialize the border
worldborder center 0 0
worldborder set 1200

# initialize the gamerules
gamerule commandModificationBlockLimit 999999999
gamerule announceAdvancements false
gamerule spawnRadius 0
gamerule doImmediateRespawn true
gamerule disableElytraMovementCheck true
gamerule playersSleepingPercentage 50
gamerule randomTickSpeed 3

# add the teams
team add north "§cTeam North"
team add south "§9Team South"

# forceload the spawn chunks
forceload add 0 350 0 350
forceload add 0 -350 0 -350

# initialize beacon spots
setblock 0 70 350 minecraft:bedrock
setblock 0 70 -350 minecraft:bedrock

# forbid placed tnt across the border
tag @a add no_tnt

# initialize the start countdown
schedule function skyattack:game_start_timer 1s

# initialize the loops
schedule function skyattack:loops/remove_markers 1s
schedule function skyattack:loops/remove_elytra 1s
schedule function skyattack:loops/remove_villagers 1s
schedule function skyattack:loops/remove_bed 1s
schedule function skyattack:loops/remove_rocket 1s
schedule function skyattack:loops/remove_redstone 1s
schedule function skyattack:loops/check_playercount 1s
schedule function skyattack:loops/remove_unmounted_pearls 1s

# initialize raid necessary functions
schedule function skyattack:raid/timer/raid_timer 1s
schedule function skyattack:raid/remove_debuffs 1s
schedule function skyattack:raid/objective 1s

# initialize the GRENZKONTROLLE!!!
schedule function skyattack:territorial/grenzkontrolle 1s

# loading the logic for the mining fatigue bubble and elytra removal
schedule function skyattack:territorial/north 1s
schedule function skyattack:territorial/south 1s

# initialize functions for the flyers
schedule function skyattack:floor/snail 1s
schedule function skyattack:floor/crab 1s
schedule function skyattack:floor/hornet 1s

# initialize the special crafts
schedule function skyattack:floor/booster 1s
schedule function skyattack:floor/radar 1s

# initialize special loops
schedule function skyattack:special/loops/special_loop 1s

# initialize the scoreboard objectives
scoreboard objectives add timer dummy
scoreboard objectives add playerCount dummy
scoreboard objectives add intruderCount dummy
scoreboard objectives add lightAttackTrigger trigger
scoreboard objectives add heavyAttackTrigger trigger
scoreboard objectives add lightAttackCooldown dummy
scoreboard objectives add heavyAttackCooldown dummy
scoreboard objectives add lightTimerScore dummy
scoreboard objectives add heavyTimerScore dummy
scoreboard objectives add attackOngoing dummy
scoreboard objectives add death minecraft.custom:minecraft.deaths
scoreboard objectives add timeSinceDeath dummy
scoreboard objectives add boosterCooldown dummy
scoreboard objectives add radarCooldown dummy
scoreboard objectives add specialUsed minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add pearlThrown minecraft.used:minecraft.ender_pearl

# initialize scores and enable triggers
scoreboard players enable @a lightAttackTrigger
scoreboard players enable @a heavyAttackTrigger
scoreboard players set @a lightAttackCooldown 0
scoreboard players set @a heavyAttackCooldown 0
