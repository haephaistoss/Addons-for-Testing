local C = _G["MecPTR"].config
local CUIF = _G["MecPTR"].common_UI_functions

local data = {
    {itemId = 39996, itemName = "Bold Scarlet Ruby", type = "Red", stats = "+16 Strength"},
    {itemId = 39997, itemName = "Delicate Scarlet Ruby", type = "Red", stats = "+16 Agility"},
    {itemId = 39998, itemName = "Runed Scarlet Ruby", type = "Red", stats = "+19 Spell Power"},
    {itemId = 39999, itemName = "Bright Scarlet Ruby", type = "Red", stats = "+32 Attack Power"},
    {itemId = 40000, itemName = "Subtle Scarlet Ruby", type = "Red", stats = "+16 Dodge Rating"},
    {itemId = 40001, itemName = "Flashing Scarlet Ruby", type = "Red", stats = "+16 Parry Rating"},
    {itemId = 40002, itemName = "Fractured Scarlet Ruby", type = "Red", stats = "+16 Armor Penetration Rating"},
    {itemId = 40003, itemName = "Precise Scarlet Ruby", type = "Red", stats = "+16 Expertise Rating"},
    {itemId = 40008, itemName = "Solid Sky Sapphire", type = "Blue", stats = "+24 Stamina"},
    {itemId = 40009, itemName = "Sparkling Sky Sapphire", type = "Blue", stats = "+16 Spirit"},
    {itemId = 40010, itemName = "Lustrous Sky Sapphire", type = "Blue", stats = "+8 Mana every 5 seconds"},
    {itemId = 40011, itemName = "Stormy Sky Sapphire", type = "Blue", stats = "+20 Spell Penetration"},
    {itemId = 40012, itemName = "Brilliant Autumn's Glow", type = "Yellow", stats = "+16 Intellect"},
    {itemId = 40013, itemName = "Smooth Autumn's Glow", type = "Yellow", stats = "+16 Critical Strike Rating"},
    {itemId = 40014, itemName = "Rigid Autumn's Glow", type = "Yellow", stats = "+16 Hit Rating"},
    {itemId = 40015, itemName = "Thick Autumn's Glow", type = "Yellow", stats = "+16 Defense Rating"},
    {itemId = 40016, itemName = "Mystic Autumn's Glow", type = "Yellow", stats = "+16 Resilience Rating"},
    {itemId = 40017, itemName = "Quick Autumn's Glow", type = "Yellow", stats = "+16 Haste Rating"},
    {itemId = 40022, itemName = "Sovereign Twilight Opal", type = "Purple", stats = "+8 Strength and +12 Stamina"},
    {itemId = 40023, itemName = "Shifting Twilight Opal", type = "Purple", stats = "+8 Agility and +12 Stamina"},
    {itemId = 40024, itemName = "Tenuous Twilight Opal", type = "Purple", stats = "+8 Agility and +4 Mana every 5 seconds"},
    {itemId = 40025, itemName = "Glowing Twilight Opal", type = "Purple", stats = "+9 Spell Power and +12 Stamina"},
    {itemId = 40026, itemName = "Purified Twilight Opal", type = "Purple", stats = "+9 Spell Power and +8 Spirit"},
    {itemId = 40027, itemName = "Royal Twilight Opal", type = "Purple", stats = "+9 Spell Power and +4 Mana every 5 seconds"},
    {itemId = 40028, itemName = "Mysterious Twilight Opal", type = "Purple", stats = "+9 Spell Power and +10 Spell Penetration"},
    {itemId = 40029, itemName = "Balanced Twilight Opal", type = "Purple", stats = "+16 Attack Power and +12 Stamina"},
    {itemId = 40030, itemName = "Infused Twilight Opal", type = "Purple", stats = "+16 Attack Power and +4 Mana every 5 seconds"},
    {itemId = 40031, itemName = "Regal Twilight Opal", type = "Purple", stats = "+8 Dodge Rating and +12 Stamina"},
    {itemId = 40032, itemName = "Defender's Twilight Opal", type = "Purple", stats = "+8 Parry Rating and +12 Stamina"},
    {itemId = 40033, itemName = "Puissant Twilight Opal", type = "Purple", stats = "+8 Armor Penetration Rating and +12 Stamina"},
    {itemId = 40034, itemName = "Guardian's Twilight Opal", type = "Purple", stats = "+8 Expertise Rating and +12 Stamina"},
    {itemId = 40037, itemName = "", type = "Orange1", stats = ""},
    {itemId = 40038, itemName = "", type = "Orange1", stats = ""},
    {itemId = 40039, itemName = "", type = "Orange1", stats = ""},
    {itemId = 40040, itemName = "", type = "Orange1", stats = ""},
    {itemId = 40041, itemName = "", type = "Orange1", stats = ""},
    {itemId = 40043, itemName = "", type = "Orange1", stats = ""},
    {itemId = 40044, itemName = "", type = "Orange1", stats = ""},
    {itemId = 40045, itemName = "", type = "Orange1", stats = ""},
    {itemId = 40046, itemName = "", type = "Orange1", stats = ""},
    {itemId = 40047, itemName = "", type = "Orange1", stats = ""},
    {itemId = 40048, itemName = "", type = "Orange1", stats = ""},
    {itemId = 40049, itemName = "", type = "Orange1", stats = ""},
    {itemId = 40050, itemName = "", type = "Orange1", stats = ""},
    {itemId = 40051, itemName = "", type = "Orange2", stats = ""},
    {itemId = 40052, itemName = "", type = "Orange2", stats = ""},
    {itemId = 40053, itemName = "", type = "Orange2", stats = ""},
    {itemId = 40054, itemName = "", type = "Orange2", stats = ""},
    {itemId = 40055, itemName = "", type = "Orange2", stats = ""},
    {itemId = 40056, itemName = "", type = "Orange2", stats = ""},
    {itemId = 40057, itemName = "", type = "Orange2", stats = ""},
    {itemId = 40058, itemName = "", type = "Orange2", stats = ""},
    {itemId = 40059, itemName = "", type = "Orange2", stats = ""},
    {itemId = 40085, itemName = "", type = "Green1", stats = ""},
    {itemId = 40086, itemName = "", type = "Green1", stats = ""},
    {itemId = 40088, itemName = "", type = "Green1", stats = ""},
    {itemId = 40089, itemName = "", type = "Green1", stats = ""},
    {itemId = 40090, itemName = "", type = "Green1", stats = ""},
    {itemId = 40091, itemName = "", type = "Green1", stats = ""},
    {itemId = 40092, itemName = "", type = "Green1", stats = ""},
    {itemId = 40094, itemName = "", type = "Green1", stats = ""},
    {itemId = 40095, itemName = "", type = "Green1", stats = ""},
    {itemId = 40096, itemName = "", type = "Green1", stats = ""},
    {itemId = 40098, itemName = "", type = "Green1", stats = ""},
    {itemId = 40099, itemName = "", type = "Green1", stats = ""},
    {itemId = 40100, itemName = "", type = "Green1", stats = ""},
    {itemId = 40101, itemName = "", type = "Green2", stats = ""},
    {itemId = 40102, itemName = "", type = "Green2", stats = ""},
    {itemId = 40103, itemName = "", type = "Green2", stats = ""},
    {itemId = 40104, itemName = "", type = "Green2", stats = ""},
    {itemId = 40105, itemName = "", type = "Green2", stats = ""},
    {itemId = 40106, itemName = "", type = "Green2", stats = ""},
    {itemId = 41285, itemName = "", type = "Meta1", stats = ""},
    {itemId = 41307, itemName = "", type = "Meta1", stats = ""},
    {itemId = 41333, itemName = "", type = "Meta1", stats = ""},
    {itemId = 41335, itemName = "", type = "Meta1", stats = ""},
    {itemId = 41339, itemName = "", type = "Meta1", stats = ""},
    {itemId = 41375, itemName = "", type = "Meta1", stats = ""},
    {itemId = 41376, itemName = "", type = "Meta1", stats = ""},
    {itemId = 41377, itemName = "", type = "Meta1", stats = ""},
    {itemId = 41378, itemName = "", type = "Meta1", stats = ""},
    {itemId = 41379, itemName = "", type = "Meta1", stats = ""},
    {itemId = 41400, itemName = "", type = "Meta1", stats = ""},
    {itemId = 44076, itemName = "", type = "Meta1", stats = ""},
    {itemId = 44078, itemName = "", type = "Meta1", stats = ""},
    {itemId = 44081, itemName = "", type = "Meta12", stats = ""},
    {itemId = 44082, itemName = "", type = "Meta12", stats = ""},
    {itemId = 44084, itemName = "", type = "Meta12", stats = ""},
    {itemId = 41380, itemName = "", type = "Meta2", stats = ""},
    {itemId = 41381, itemName = "", type = "Meta2", stats = ""},
    {itemId = 41382, itemName = "", type = "Meta2", stats = ""},
    {itemId = 41385, itemName = "", type = "Meta2", stats = ""},
    {itemId = 41389, itemName = "", type = "Meta2", stats = ""},
    {itemId = 41395, itemName = "", type = "Meta2", stats = ""},
    {itemId = 41396, itemName = "", type = "Meta2", stats = ""},
    {itemId = 41397, itemName = "", type = "Meta2", stats = ""},
    {itemId = 41398, itemName = "", type = "Meta2", stats = ""},
    {itemId = 41401, itemName = "", type = "Meta2", stats = ""},
    {itemId = 44087, itemName = "", type = "Meta2", stats = ""},
    {itemId = 44088, itemName = "", type = "Meta2", stats = ""},
    {itemId = 44089, itemName = "", type = "Meta2", stats = ""},
}

local f = CUIF.createBodyFrame("MecPTRGemsFrame", "gems")
local t = CUIF.addTextToFrame(f, "Click a gem's icon to add it to your inventory", 12, 0, -5, "TOP", "MIDDLE", "TOP")
t:SetTextColor(0,1,0,1)

current_type = data[1].type
current_x = 35
current_row = 0
for index, value in pairs(data) do
    if current_type ~= value.type then
        current_x = current_x + 40
        current_row = 0
        current_type = value.type
    end
    CUIF.createItemFrame(f, value.itemId, 30, current_x, -35 * current_row - 25)
    current_row = current_row + 1
end
