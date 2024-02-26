# remove firework rockets from intruders holding a crossbow
execute as @a[tag=north_intruder,nbt={SelectedItem:{id:"minecraft:crossbow"}}] run clear @s minecraft:firework_rocket
execute as @a[tag=south_intruder,nbt={SelectedItem:{id:"minecraft:crossbow"}}] run clear @s minecraft:firework_rocket

# loop function every tick
schedule function skyattack:loops/remove_rocket 1t
