## flight
execute as @s[tag=flymiddle] run function superman:collidersummon
execute as @s[tag=takeoff] run function superman:takeoff
execute as @s[tag=flydown] at @s run playsound minecraft:whoosh master @s ~ ~ ~ 0.6 0.8
execute as @s[tag=flydown] run effect give @s levitation 1 160 true
execute as @s[tag=flyup] run function superman:flyup
execute as @s[tag=flyslowup] run effect give @s levitation 1 10 true
execute at @s if block ~ ~-3 ~ #batonblocks run effect give @s jump_boost 1 255 true
