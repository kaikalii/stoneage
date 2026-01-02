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
   {"iron" "diamond"}
   ♭⊞⍚$"_\__")

  # From iron ingots
  ⍚$"iron\__"{"block" "bars" "chain" "door" "trapdoor"}

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
  {"bucket"
   "anvil"
   "minecart"
   "rail"
   "activator_rail"
   "detector_rail"
   "powered_rail"
   "piston"
   "hopper"
   "heavy_weighted_pressure_plate"
   "crafter"}
}
/◇⊂₃",\n      "⍚$$ {"namespace": "minecraft", "path": "recipe/_.json"}

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
    $$     ["minecraft:raw\_iron", "minecraft:iron\_ingot"],
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
     $$   "addition": "#chalcolithic:trim\_materials",
     $$   "base": "#minecraft:trimmable\_armor",
     $$   "pattern": "minecraft:_",
     $$   "template": "minecraft:_\_armor\_trim\_smithing\_template"
     $$ }
  )
)

# Show darkness sphere
▽<+0.5⟜(⊸(⍜˙×/+°⍉) ♭₂⧋-⟜(⇡ ↯3 +1×2)) 6
/◇⊂₃@\n⍚°[°$"execute positioned ~_ ~_ ~_ run function chalcolithic:darksight/show\_darkness\_at"]
$$ # Generated file
$$ _
&fwa "data/chalcolithic/function/darksight/show_darkness.mcfunction"
