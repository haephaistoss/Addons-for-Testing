local C = _G["MecPTR"].config
local CUIF = _G["MecPTR"].common_UI_functions

local data = {
    {col = 1, itemId = 38986, itemName = "Enchant Boots - Icewalker", type = "Boots"},
    {col = 1, itemId = 39006, itemName = "Enchant Boots - Tuskarr's Vitality", type = "Boots"},
    {col = 1, itemId = 41167, itemName = "Heartseeker Scope", type = "Scope"},
    {col = 1, itemId = 44815, itemName = "Enchant Bracers - Greater Assault", type = "Bracers"},
    {col = 1, itemId = 44947, itemName = "Enchant Bracers - Major Stamina", type = "Bracers"},
    {col = 1, itemId = 44470, itemName = "Enchant Bracers - Superior Spellpower", type = "Bracers"},
    {col = 1, itemId = 38968, itemName = "Enchant Bracers - Exceptional Intellect", type = "Bracers"},
    {col = 1, itemId = 44465, itemName = "Enchant Chest - Powerful Stats", type = "Chest"},
    {col = 1, itemId = 39005, itemName = "Enchant Chest - Super Health", type = "Chest"},
    {col = 1, itemId = 39003, itemName = "Enchant Cloak - Greater Speed", type = "Cloak"},
    {col = 1, itemId = 44457, itemName = "Enchant Cloak - Major Agility", type = "Cloak"},
    {col = 1, itemId = 38978, itemName = "Enchant Cloak - Titanweave", type = "Cloak"},
    {col = 2, itemId = 38990, itemName = "Enchant Gloves - Armsman", type = "Gloves"},
    {col = 2, itemId = 44458, itemName = "Enchant Gloves - Crusher", type = "Gloves"},
    {col = 2, itemId = 38979, itemName = "Enchant Gloves - Exceptional Spellpower", type = "Gloves"},
    {col = 2, itemId = 38951, itemName = "Enchant Gloves - Expertise", type = "Gloves"},
    {col = 2, itemId = 38967, itemName = "Enchant Gloves - Major Agility", type = "Gloves"},
    {col = 2, itemId = 38953, itemName = "Enchant Gloves - Precision", type = "Gloves"},
    {col = 2, itemId = 44159, itemName = "Arcanum of Burning Mysteries", type = "Head"},
    {col = 2, itemId = 44150, itemName = "Arcanum of the Stalwart Protector", type = "Head"},
    {col = 2, itemId = 44149, itemName = "Arcanum of Torment", type = "Head"},
    {col = 2, itemId = 41602, itemName = "Brilliant Spellthread", type = "Legs"},
    {col = 2, itemId = 41604, itemName = "Sapphire Spellthread", type = "Legs"},
    {col = 2, itemId = 38373, itemName = "Frosthide Leg Armor", type = "Legs"},
    {col = 2, itemId = 38374, itemName = "Icescale Leg Armor", type = "Legs"},
    {col = 2, itemId = 38945, itemName = "Enchant Shield - Major Stamina", type = "Shield"},
    {col = 2, itemId = 44455, itemName = "Enchant Shield - Greater Intellect", type = "Shield"},
    {col = 3, itemId = 44133, itemName = "Greater Inscription of the Axe", type = "Shoulder"},
    {col = 3, itemId = 44957, itemName = "Greater Inscription of the Gladiator", type = "Shoulder"},
    {col = 3, itemId = 44136, itemName = "Greater Inscription of the Pinnacle", type = "Shoulder"},
    {col = 3, itemId = 44135, itemName = "Greater Inscription of the Storm", type = "Shoulder"},
    {col = 3, itemId = 41611, itemName = "Eternal Belt Buckle", type = "Waist"},
    {col = 3, itemId = 45056, itemName = "Enchant Staff - Greater Spellpower", type = "Weapon"},
    {col = 3, itemId = 44467, itemName = "Enchant Weapon - Mighty Spellpower", type = "Weapon"},
    {col = 3, itemId = 44493, itemName = "Enchant Weapon - Berserking", type = "Weapon"},
    {col = 3, itemId = 38925, itemName = "Enchant Weapon - Mongoose", type = "Weapon"},
    {col = 3, itemId = 43987, itemName = "Enchant Weapon - Black Magic", type = "Weapon"},
    {col = 3, itemId = 44466, itemName = "Enchant Weapon - Superior Potency", type = "Weapon"},
    {col = 3, itemId = 38918, itemName = "Enchant Weapon - Major Intellect", type = "Weapon"},
    {col = 3, itemId = 44463, itemName = "Enchant 2H Weapon - Massacre", type = "Weapon"},
}

local f = CUIF.createBodyFrame("MecPTREnchantsFrame", "enchants")
local t = CUIF.addTextToFrame(f, "Click an enchant's icon to add it to your inventory", 12, 0, -5, "TOP", "MIDDLE", "TOP")
t:SetTextColor(0,1,0,1)

current_y = -20
current_col = 1
current_type = "default"
text_x_values = {-365, -205, -45}
icon_x_values = {140, 300, 460}

for index, value in pairs(data) do
    --Increment current col if we hit a new column value
    if current_col ~= value.col then
        current_y = -20
        current_col = current_col + 1
    end

    --Type titles
    if current_type ~= value.type then
        current_y = current_y - 10
        local t2 = CUIF.addTextToFrame(f, value.type, 10, text_x_values[current_col], current_y, "TOPRIGHT", "RIGHT", "MIDDLE")
        t2:SetTextColor(1,0,0,1)
        current_y = current_y - 15
        current_type = value.type
    end

    --Add the enchant
    CUIF.addTextToFrame(f, value.itemName, 8, text_x_values[current_col], current_y - 5, "TOPRIGHT", "RIGHT", "MIDDLE")
    CUIF.createItemFrame(f, value.itemId, 20, icon_x_values[current_col], current_y)

    current_y = current_y - 25
end
