execute unless block ~ ~ ~ dropper run kill @e[type=item,distance=0..2,nbt={Item:{id:"minecraft:dropper"}}]
execute unless block ~ ~ ~ dropper run summon item ~ ~ ~ {Item:{id:"minecraft:fletching_table",Count:1b}}
execute unless block ~ ~ ~ dropper run kill
item replace block ~ ~ ~ container.0 with barrier 1
item replace block ~ ~ ~ container.1 with barrier 1
item replace block ~ ~ ~ container.2 with barrier 1
item replace block ~ ~ ~ container.6 with barrier 1
item replace block ~ ~ ~ container.7 with barrier 1
item replace block ~ ~ ~ container.8 with barrier 1
execute if block ~ ~ ~ dropper{Items:[{Slot:3b,id:"minecraft:arrow",Count:1b}]} unless block ~ ~ ~ dropper{Items:[{Slot:5b}]} run function arrows:recipes