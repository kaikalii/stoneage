&fmd "data/minecraft/recipe"
RecipePath ← $"data/minecraft/recipe/_.json"

# Remove recipes
/◇⊂{
  ({"pickaxe"
    "axe"
    "shovel"
    "hoe"
    "sword"
    "helmet"
    "chestplate"
    "leggings"
    "boots"}
   {"copper"
    "iron"
    "golden"
    "diamond"}
   ♭⊞⍚$"_\__")

  ({"block" "bars" "chain" "door" "trapdoor"}
   {"copper" "iron"}
   ♭⊞⍚$"_\__")

  ({"" "weathered" "oxidized" ""}
   /◇⊂≡⊃{$"\_cut\_copper"|$"\_cut\_copper\_slab"|$"\_cut\_copper\_stairs"})

  {"bucket"
   "crossbow"
   "shield"
   "lightning_rod"
   "anvil"
   "blast_furnace"
   "minecart"
   "rail"
   "activator_rail"
   "detector_rail"
   "powered_rail"
   "piston"
   "hopper"
   "gold_block"
   "light_weighted_pressure_plate"
   "heavy_weighted_pressure_plate"
  }
}

⍚RecipePath
≡⌟&fwa ⊙$ { "type": "minecraft:crafting_decorated_pot" }

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
