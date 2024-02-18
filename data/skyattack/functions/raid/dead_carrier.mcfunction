# reset beacons if carrier is dead
execute as @a[tag=carrier] at @s run setblock 0 70 350 minecraft:beacon
execute as @a[tag=carrier] at @s run setblock 0 70 -350 minecraft:beacon
execute as @a[tag=carrier] at @s run tag @a remove messaged_stolen
execute as @a[tag=carrier] at @s run tag @a[tag=carrier] remove carrier

tellraw @a "§7[§b§lSkyAttack§7] §r§dThe carrier has died! The beacon has been reset."
