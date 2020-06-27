## takeoff
effect clear @s jump_boost
execute as @s[scores={supercrouch=1..20}] run effect give @s jump_boost 1 10 true
execute as @s[scores={supercrouch=20..40}] run effect give @s jump_boost 1 20 true
execute as @s[scores={supercrouch=40..60}] run effect give @s jump_boost 1 40 true
execute as @s[scores={supercrouch=60..}] run effect give @s jump_boost 1 80 true
execute as @s[scores={Sprint=1..}] run effect give @s jump_boost 1 40 true
execute at @s run particle minecraft:mycelium ~ ~ ~ 1 0 1 0 30