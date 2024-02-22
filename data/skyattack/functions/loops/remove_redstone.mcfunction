# remove redstone items from intruders

# remove lever
clear @a[tag=intruder] minecraft:lever

# remove buttons
clear @a[tag=intruder] minecraft:stone_button
clear @a[tag=intruder] minecraft:oak_button
clear @a[tag=intruder] minecraft:spruce_button
clear @a[tag=intruder] minecraft:birch_button
clear @a[tag=intruder] minecraft:jungle_button
clear @a[tag=intruder] minecraft:acacia_button
clear @a[tag=intruder] minecraft:dark_oak_button
clear @a[tag=intruder] minecraft:cherry_button
clear @a[tag=intruder] minecraft:mangrove_button
clear @a[tag=intruder] minecraft:bamboo_button

# remove pressure plates
clear @a[tag=intruder] minecraft:stone_pressure_plate
clear @a[tag=intruder] minecraft:oak_pressure_plate
clear @a[tag=intruder] minecraft:spruce_pressure_plate
clear @a[tag=intruder] minecraft:birch_pressure_plate
clear @a[tag=intruder] minecraft:jungle_pressure_plate
clear @a[tag=intruder] minecraft:acacia_pressure_plate
clear @a[tag=intruder] minecraft:dark_oak_pressure_plate
clear @a[tag=intruder] minecraft:cherry_pressure_plate
clear @a[tag=intruder] minecraft:mangrove_pressure_plate
clear @a[tag=intruder] minecraft:bamboo_pressure_plate
clear @a[tag=intruder] minecraft:light_weighted_pressure_plate
clear @a[tag=intruder] minecraft:heavy_weighted_pressure_plate

# remove redstone torch
clear @a[tag=intruder] minecraft:redstone_torch

# remove redstone block
clear @a[tag=intruder] minecraft:redstone_block

# remove tripwire hook
clear @a[tag=intruder] minecraft:tripwire_hook

# remove observer
clear @a[tag=intruder] minecraft:observer

# remove daylight sensor
clear @a[tag=intruder] minecraft:daylight_detector

# remove detector rail
clear @a[tag=intruder] minecraft:detector_rail

# remove sculk sensor
clear @a[tag=intruder] minecraft:sculk_sensor

# remove comparator
clear @a[tag=intruder] minecraft:comparator

# remove target block
clear @a[tag=intruder] minecraft:target

# loop function every tick
schedule function skyattack:loops/remove_redstone 1t
