## ghast summonning
summon ghast 0 0 0 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["collider"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}]}
summon ghast 0 0 0 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["collider"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}]}
summon ghast 0 0 0 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["collider"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}]}

execute at @s[scores={supercrouch=1..}] run tp @e[tag=collider] ^ ^ ^-0.2
execute at @s[scores={supercrouch=1..}] run effect give @s speed 1 20 true
execute at @s[scores={supercrouch=1..}] run playsound minecraft:whoosh master @s ~ ~ ~ 0.6 0.8