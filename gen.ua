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

  ({"bars" "chain" "door" "trapdoor"}
   {"copper" "iron"}
   ♭⊞⍚$"_\__")

  {"bucket"
   "crossbow"
   "lightning_rod"
   "anvil"
   "blast_furnace"
   "minecart"
   "rail"
   "activator_rail"
   "detector_rail"
   "powered_rail"
   "piston"
   "hopper"}
}

⍚RecipePath
≡⌟&fwa ⊙$ { "type": "minecraft:crafting_decorated_pot" }

# Multiple flint and steel recipes
⇌⁅×64/7 ⇡7
°˜⊏ °⊸⊢ □"" °⋕ +1°⊏
≡(&fwa ? ⊓(
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
