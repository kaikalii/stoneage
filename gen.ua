# Remove recipes
⍆/◇⊂{
  # Tools and armor
  ({"pickaxe"
    "axe"
    "shovel"
    "hoe"
    "sword"
    "helmet"
    "chestplate"
    "leggings"
    "boots"}
   ⍚$"diamond\__"
  )

  # Ingot smelting
  (SmeltingOre ← ⊃(
    | ˙$"_\_from\_smelting\__\_ore"
    | ˙$"_\_from\_smelting\_deepslate\__\_ore"
    )
   Smelting ← ⊃(
    | $"_\_nugget\_from\_smelting"
    | ˙$"_\_ingot\_from\_smelting\_raw\__"
    | ˙$"_\_ingot\_from\_smelting\__\_ore"
    | ˙$"_\_ingot\_from\_smelting\_deepslate\__\_ore"
    )
   Blasting ← ⊃(
    | $"_\_nugget\_from\_blasting"
    | ˙$"_\_ingot\_from\_blasting\_raw\__"
    | ˙$"_\_ingot\_from\_blasting\__\_ore"
    | ˙$"_\_ingot\_from\_blasting\_deepslate\__\_ore"
    )
   {⊃Smelting Blasting "iron"
    Smelting "copper"
    ⊃Smelting˙$"_\_ingot\_from\_smelting\_nether\__\_ore" "gold"
    SmeltingOre "redstone"
    SmeltingOre "lapis"
    SmeltingOre "diamond"
    SmeltingOre "emerald"
    "lapis_lazuli_from_smelting_lapis_ore"
    "lapis_lazuli_from_smelting_deepslate_lapis_ore"
    "quartz"
    "netherite_scrap"}
  )

  # Others
  {"anvil"
   "minecart"
   "rail"
   "activator_rail"
   "detector_rail"
   "powered_rail"
   "piston"
   "hopper"
   "crafter"
   "enchanting_table"}
}
/◇⊂₃",\n      "⍚$$ {"namespace": "minecraft", "path": "recipe/_.json"}
{
  "story/shiny_gear"
  "nether/netherite_armor"
  "husbandry/obtain_netherite_hoe"
  "adventure/crafters_crafting_crafters"
}
/◇⊂₃",\n      "⍚$$ {"namespace": "minecraft", "path": "advancement/_.json"}

$$ {
$$   "pack": {
$$     "description": "Lowering of Minecraft's tech level",
$$     "pack\_format": 94,
$$     "supported\_formats": [48, 94],
$$     "max\_format": 94,
$$     "min\_format": 48
$$   },
$$   "filter": {
$$     "block": [
$$       _,
$$       _
$$     ]
$$   }
$$ }
&fwa "pack.mcmeta"

# Add new recipes
&fmd "data/minecraft/recipe"
RecipePath ← $"data/minecraft/recipe/_.json"

# Multiple flint and steel recipes
⇌⁅×64/7 ⇡7
°˜⊏ °⊸⊢ □"" °⋕ +1°⊏
≡(&fwa ⊓(
    RecipePath $"flint\_and\_steel_"
  | ♭↯⊙",\"minecraft:stick\"" +1
    $$ {
    $$   "type": "minecraft:crafting\_shapeless",
    $$   "category": "equipment",
    $$   "ingredients": [
    $$     "minecraft:raw\_iron",
    $$     "minecraft:flint"_
    $$   ],
    $$   "result": {
    $$     "count": 1,
    $$     "id": "minecraft:flint\_and\_steel",
    $$     "components": {
    $$       "damage": _
    $$     }
    $$   },
    $$   "group": "flint\_and\_steel"
    $$ }
  ))

# Remove metals from armor trims
{"sentry"
 "vex"
 "wild"
 "coast"
 "dune"
 "wayfinder"
 "raiser"
 "shaper"
 "host"
 "ward"
 "silence"
 "tide"
 "snout"
 "rib"
 "eye"
 "spire"
 "flow"
 "bolt"}
⍚(&fwa ⊃(
    $"data/minecraft/recipe/_\_armor\_trim\_smithing\_template\_smithing\_trim.json"
  | ˙$$ {
     $$   "type": "minecraft:smithing\_trim",
     $$   "addition": "#chalc:trim\_materials",
     $$   "base": "#minecraft:trimmable\_armor",
     $$   "pattern": "minecraft:_",
     $$   "template": "minecraft:_\_armor\_trim\_smithing\_template"
     $$ }
  )
)

# Show darkness sphere
▽<+0.5⟜(⊸(⍜˙×/+°⍉) ♭₂⧋-⟜(⇡ ↯3 +1×2)) 6
/◇⊂₃@\n⍚°[°$"execute positioned ~_ ~_ ~_ run function chalc:darksight/show\_darkness\_at"]
$$ # Generated file
$$ _
&fwa "data/chalc/function/darksight/show_darkness.mcfunction"

# not_enchantable tag
{"pickaxe" "axe" "shovel" "hoe" "sword" "spear"}
{"iron" "diamond" "netherite"}
{"helmet" "chestplate" "leggings" "boots"}
{"iron" "chainmail" "diamond" "netherite"}
⊂∩(♭⊞⍚$"\"_\__\"")
/◇⊂₃",\n        "
$$ {
$$     "values": [
$$         _
$$     ]
$$ }
&fwa "data/chalc/tags/item/not_enchantable.json"

# Repair tags
Mats      ← {"wooden" "stone" "copper" "golden"}
MatTags   ← ⊞⍚⊂ Mats {"1mat" "2mat" "3mat"}
MatGroups ← ⊞◇(⍚⌞$"_\__") Mats {{"shovel" "spear"} {"hoe" "sword"} {"pickaxe" "axe"}}
MatTags MatGroups
≡≡(&fwa ⊓$"data/chalc/tags/item/_.json"(
    /◇⊂₃",\n        "⍚$"\"_\""
    $$ {
    $$     "values": [
    $$         _
    $$     ]  
    $$ }
  ))

{
  [
    RepairTool ← ⍚⌞₂(
      ⟜₃(⌈÷⋅⋅⊙∘)
      $"$execute if items entity @s weapon.$(material) _ if items entity @s weapon.$(equipment) #chalc:__mat run return _"
    ) ⊙⊙(⇡₁3)
    RepairTool "#planks" "wooden" 59
    RepairTool "#stone_tool_materials" "stone" 131
    RepairTool "copper_ingot" "copper" 190
    RepairTool "gold_ingot" "golden" 32
  ]
  [
    ArmorMat ← [5 8 7 4]
    ArmorName ← {"helmet" "chestplate" "leggings" "boots"}
    ArmorDur ← [1 16/11 15/11 13/11]
    RepairArmor ← ⍚⌞₂(
      ⊙⊙⊙(⌈÷⊙×)
      $"$execute if items entity @s weapon.$(material) _ if items entity @s weapon.$(equipment) _\__ run return _"
    ) ⊙⊙(ArmorName ArmorMat ArmorDur)
    RepairArmor "leather" "leather" 55
    RepairArmor "copper_ingot" "copper" 176
  ]
  {
    RepairOther ← $"$execute if items entity @s weapon.$(material) _ if items entity @s weapon.$(equipment) _ run return _"
    RepairOther "#planks" "shield" 336/6
    RepairOther "turtle_scute" "turtle_helmet" 275/5
    RepairOther "phantom_membrane" "elytra" 432/3
    RepairOther "armadillo_scute" "wolf_armor" ⌈64/6
    RepairOther "breeze_rod" "mace" 500/10
  }
}
/◇⊂₃"\n\n"♭⍚(/◇⊂₃"\n"♭)

˜⊂$$ 
  $$ 
  $$ return 0
&fwa "data/chalc/function/repair/repair_amount.mcfunction"

# Composter increase
⟜↻₁ ⇡₀8
⍚$"execute if block ~ ~ ~ composter[level=_] run return run setblock ~ ~ ~ composter[level=_]"
⍜⊣(◇□₂"execute if block ~ ~ ~ composter[level=8] run summon item ~ ~ ~ {Item:{id:bone_meal,count:1}}")
⊂{"# This file is generated""playsound block.composter.fill_success block @a"}
/◇⊂₃@\n
&fwa "data/chalc/function/fill/increase.mcfunction"

# Wool clothing recipes
{"white" "orange" "magenta" "light_blue" "yellow" "lime" "pink" "gray" "light_gray" "cyan" "purple" "blue" "brown" "green" "red" "black"}
[16383998 16351261 13061821 3847130 16701501 8439583 15961002 4673362 10329495 1481884 8991416 3949738 8606770 6192150 11546150 1908001]
⍉⊟
{"Hat" "Shirt" "Pants" "Shoes"}
{"helmet" "chestplate" "leggings" "boots"}
{
  $         "###",
  $         "# #"

  $         "# #",
  $         "###",
  $         "###"

  $         "###",
  $         "# #",
  $         "# #"

  $         "# #",
  $         "# #"
}
⍉⊟₃
⊞(⊓°□₃°□₂
  ⊃(⋅⊙⋅⋅∘
    $"wool/_\__"
  | ⊃(⊙⋅⋅⋅∘|⋅⟜⊙⊙∘)
    $$ {
    $$     "type": "minecraft:crafting\_shaped",
    $$     "category":"equipment",
    $$     "pattern": [
    $$ _
    $$     ],
    $$     "key": {
    $$         "#": "_\_wool"
    $$     },
    $$     "group": "wool\__",
    $$     "result": {
    $$         "id": "leather\__",
    $$         "components": {
    $$             "custom\_name": "Wool _",
    $$             "dyed\_color": _,
    $$             "attribute\_modifiers": [
    $$                 {
    $$                     "type": "armor",
    $$                     "operation": "add\_value",
    $$                     "id": "chalc:wool\_armor",
    $$                     "amount": 1,
    $$                     "slot": "any"
    $$                 }
    $$             ]
    $$         }
    $$     }
    $$ }
  )
  ⊃(□$$ "chalc:_"
  | &fwa $$ data/chalc/recipe/_.json
  )
)
/◇⊂₃",\n            "♭
$$ {
$$     "parent": "minecraft:recipes/root",
$$     "criteria": {
$$         "has\_wool": {
$$             "conditions": {
$$                 "items": [
$$                     {
$$                         "items": "#wool"
$$                     }
$$                 ]
$$             },
$$             "trigger": "minecraft:inventory\_changed"
$$         }
$$     },
$$     "requirements": [
$$         [
$$             "has\_wool"
$$         ]
$$     ],
$$     "rewards": {
$$         "recipes": [
$$             _
$$         ]
$$     }
$$ }
&fwa "data/chalc/advancement/recipe/wool_armor.json"
