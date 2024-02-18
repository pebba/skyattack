# decrement booster cooldown for all players
scoreboard players remove @a[scores={boosterCooldown=1..}] boosterCooldown 1

# reset uses if cooldown is active
scoreboard players set @a[scores={boosterCooldown=1..}] specialUsed 0

# check for radar used and cooldown expired
execute as @a[scores={specialUsed=1..}] at @s if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{booster:1b}}}] run function skyattack:special/booster
execute as @a[scores={specialUsed=1..}] at @s if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{booster:1b}}}] run scoreboard players set @a specialUsed 0

# loop every tick
schedule function skyattack:special/loops/booster_loop 1t
