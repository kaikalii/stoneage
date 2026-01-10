# Description

Chalcolithic is an overhaul datapack that lowers Minecraft's tech level and flattens progression.

High-temperature metallurgy is a lost art, and neither the player nor villagers are capable of it. Advanced equipment and blocks can only be found in the ruins of ancient civilizations.

# Quick Overview of Changes

- Many recipes have been removed, but some items can still be found in the world
  - No crafting of iron, diamond, or netherite weapons, tools, or armor
- Altered recipes for many things
  - Many smelting recipes require a **blast furnace**, which has a new recipe itself
  - Crafting changes mean that **copper is king**
- **Overhauled the enchanting system** to be based more on exploration and less on random chance
- **Buckets are nerfed**. The source blocks they place quickly disappear.
- Much more!

The recipe book will help you with new recipes! Advancements are also tweaked to help you progress.

# Full List of Changes

## Removed Recipes

While these recipes are removed, most of the blocks and items can still be found via natural generation and loot. The items are also removed from villager and wandering trader trades.

- Iron smelting and blasting
- Copper and gold smelting
- Iron, diamond, and netherite swords, tools, and armor
- Iron and netherite armor trimming
- Smelting recipes for ore blocks
- Anvil
- Minecart
- All rails
- Piston
- Hopper
- Crafter
- Enchanting Table

## Modified Recipes

- Raw copper and gold smelt into nuggets rather than ingots, and they require a blast furnace
- A copper ingot is equivalent to 4 copper nuggets (down from 9)
- A copper block is equivalent to 4 copper ingot (down from 9)
- A gold ingot is equivalent to 4 gold nuggets (down from 9)
  - Gold ores drop 1-4 raw gold (up from 1)
  - Nether gold ores drop 1-3 nuggets (down from 1-4)
- Glass requires a blast furnace
- Glazed terracotta requires a blast furnace
- Many recipes that take string take other items that are used to tie things:
  - String
  - Vines
  - Weeping Vines
  - Twisting Vines
  - Leather
  - Rabbit Hide
- Some recipes that previously required an ingot require either a tie item or a sticky item:
  - Brush
  - Saddle
- Flint and Steel use raw iron instead of an ingot, but it requires kindling in the form of sticks. The more sticks added to the recipe, the higher the durability.
- Shields, crossbows, and buckets are crafted with a copper ingot instead of iron.
- Completely overhauled the recipes for:
  - Blast Furnace
  - Shears
  - Clock
  - Compass
  - Tripwire Hook
  - All lanterns
  - Lodestone
  - Map
  - Smithing Table
  - Cauldron
  - Books

## Added Recipes

- String from wool or carpets. Has diminishing returns.
- Water bottles can be freely crafted to and from splash water bottles. These can be used to extinguish fires but cannot be used in brewing recipes for other splash potions.
- Nametag
- Enchantable books for the new enchanting system
- Wool clothing
  - Must be crafted from the same wool color
  - +4 armor total from a full set (compared to +7 from full leather)

## Other Changes

### Copper
- Copper pickaxes can mine all blocks that iron pickaxes can
- Village chests contain copper ingots and equipment where they once had iron
- Village structures that generated with iron bars generate with copper bars
- Woodland mansions that generated with iron doors generate with copper doors

### Iron
- Iron cannot be smelted in any way, but raw iron has some uses.
- Iron golems are *clay* golems. They are made in the normal shape, but with clay blocks instead of iron blocks. The clay must be surrounded by mud. Clay golems drop clay balls instead of iron ingots.

### Enchanting
- Rather than at an enchanting table, all enchanting is now done through enchanted books
- Enchantable books can be imbued with enchantments by using them in different places
  - Different biomes give different enchantments
  - Some biomes give multiple enchantments, some only one
  - Enchanting a book costs levels equal to the sum of the resulting enchantment levels
  - Higher total levels allow for stronger enchantments
  - Stronger enchantments require higher tiered enchantable books, which are a new sink for valuable materials like diamond and netherite
  - Enchanting a book absorbs magic from the environment, and additional books cannot be enchanted nearby until a period of time has passed
  - Particles in the area show where a book was enchanted and indicate the cooldown
  - If a book was too recently enchanted nearby, particles will point to where that was
- Enchanted books can be applied to equipment by holding the book in one hand and the equipment in the other and using the book. Armor must be held in the offhand to avoid equipping it instead.
  - This does not work on diamond or netherite gear.
  - Mending cannot be applied to elytra
  - Golden equipment has a high chance to increase the level of enchantments applied to it by 1
- The new *Darksight* enchantment for helmets shows blocks that are dark enough for mobs to spawn

### Repairing
- Equipment can be repaired by holding a corresponding repair material in one hand and the equipment in the other and holding down the use button. Armor must be held in the offhand to avoid equipping it instead.
- Enchantments are not lost
- Repair amount scales with the material as a fraction of the equipment's crafting recipe
- Each bit of repair costs 1 level of experience
- Iron and diamond gear cannot be repaired

### Buckets
- Buckets are crafted with copper and their textures are changed accordingly
- Water and lava buckets can place source blocks, but they will quickly disappear.
- Placing a water or lava bucket (including fish buckets) in a dispenser will leak the contents.

### Nametags
- Nametags can be used on a sign to change the name
- Nametags can be applied to equipment by holding the nametag in one hand and the equipment in the other and using the nametag. Armor must be held in the offhand to avoid equipping it instead.

### Items and Automation
- Copper trapdoors drain items from containers if placed on the side or underneath
- Copper golems can now pick up items from the ground and sort them
- Composters now automatically compost items dropped inside them
- Torches thrown from a player's inventory will automatically place as blocks when touching the ground.