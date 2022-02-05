local C = _G["MecPTR"].config
local CUIF = _G["MecPTR"].common_UI_functions

data ={
    {class="Death Knight", spec="Blood", items={
        {itemId = 41285, count=1}, --meta gem
        {itemId = 39996, count=10}, --gem1
        {itemId = 40038, count=6}, --gem2
        {itemId = 40014, count=6}, --gem3
        {itemId = 40022, count=3}, --gem4
        {itemId = 43015, count=40}, --food buff
        {itemId = 46379, count=10}, --flask
        {itemId = 40093, count=40}, --potions
        {itemId = 44150, count = 1}, --Head enchant
        {itemId = 44957, count = 1}, --Shoulder enchant
        {itemId = 38978, count = 1}, --Cloak enchant
        {itemId = 39005, count = 1}, --Chest enchant
        {itemId = 44947, count = 1}, --Bracers enchant
        {itemId = 38990, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 38373, count = 1}, --Legs enchant
        {itemId = 39006, count = 1}, --Boots enchant
    }},
    {class="Death Knight", spec="Frost", items={
        {itemId = 41398, count = 1}, --Meta
        {itemId = 39996, count = 1}, --Gem1
        {itemId = 40038, count = 1}, --Gem2
        {itemId = 40014, count = 1}, --Gem3
        {itemId = 40041, count = 1}, --Gem4
        {itemId = 40022, count = 1}, --Gem5
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46377, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 44149, count = 1}, --Head enchant
        {itemId = 44133, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44815, count = 1}, --Bracers enchant
        {itemId = 44458, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 38374, count = 1}, --Legs enchant
        {itemId = 39006, count = 1}, --Boots enchant
    }},
    {class="Death Knight", spec="Unholy", items={
        {itemId = 41398, count = 1}, --Meta
        {itemId = 39996, count = 1}, --Gem1
        {itemId = 40038, count = 1}, --Gem2
        {itemId = 40014, count = 1}, --Gem3
        {itemId = 40041, count = 1}, --Gem4
        {itemId = 40022, count = 1}, --Gem5
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46377, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 50367, count = 1}, --Head enchant
        {itemId = 44133, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44815, count = 1}, --Bracers enchant
        {itemId = 44458, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 38374, count = 1}, --Legs enchant
        {itemId = 39006, count = 1}, --Boots enchant
    }},
    {class="Druid", spec="Balance", items={
        {itemId = 41285, count = 1}, --Meta
        {itemId = 39998, count = 1}, --Gem1
        {itemId = 40048, count = 1}, --Gem2
        {itemId = 40026, count = 1}, --Gem3
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46376, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 44159, count = 1}, --Head enchant
        {itemId = 44135, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44470, count = 1}, --Bracers enchant
        {itemId = 38979, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 41602, count = 1}, --Legs enchant
        {itemId = 39006, count = 1}, --Boots enchant
        {itemId = 44467, count = 1}, --Weapon enchant
        {itemId = 45056, count = 1}, --Weapon enchant
        {itemId = 44605, count = 40}, --Reagent 1
        {itemId = 44614, count = 40}, --Reagent 2
    }},
    {class="Druid", spec="Feral", items={
        {itemId = 41398, count = 1}, --Meta
        {itemId = 41380, count = 1}, --Meta
        {itemId = 39997, count = 1}, --Gem1
        {itemId = 40014, count = 1}, --Gem2
        {itemId = 40044, count = 1}, --Gem3
        {itemId = 40023, count = 1}, --Gem4
        {itemId = 40008, count = 1}, --Gem5
        {itemId = 40058, count = 1}, --Gem6
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46377, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 46379, count = 10}, --flask
        {itemId = 40093, count = 40}, --potions
        {itemId = 44149, count = 1}, --Head enchant
        {itemId = 44133, count = 1}, --Shoulder enchant
        {itemId = 44457, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44815, count = 1}, --Bracers enchant
        {itemId = 38967, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 38374, count = 1}, --Legs enchant
        {itemId = 38986, count = 1}, --Boots enchant
        {itemId = 44493, count = 1}, --Weapon enchant
        {itemId = 44605, count = 40}, --Reagent 1
        {itemId = 44614, count = 40}, --Reagent 2
    }},
    {class="Druid", spec="Restoration", items={
        {itemId = 41401, count = 1}, --Meta
        {itemId = 39998, count = 1}, --Gem1
        {itemId = 40051, count = 1}, --Gem2
        {itemId = 40026, count = 1}, --Gem3
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46376, count = 10}, --flask
        {itemId = 33448, count = 40}, --potions
        {itemId = 44159, count = 1}, --Head enchant
        {itemId = 44135, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44470, count = 1}, --Bracers enchant
        {itemId = 38979, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 41602, count = 1}, --Legs enchant
        {itemId = 39006, count = 1}, --Boots enchant
        {itemId = 44467, count = 1}, --Weapon enchant
        {itemId = 45056, count = 1}, --Weapon enchant
        {itemId = 44605, count = 40}, --Reagent 1
        {itemId = 44614, count = 40}, --Reagent 2
    }},
    {class="Hunter", spec="Beast Mastery", items={
        {itemId = 41398, count = 1}, --Meta
        {itemId = 39999, count = 1}, --Gem1
        {itemId = 40014, count = 1}, --Gem2
        {itemId = 40022, count = 1}, --Gem3
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46377, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 44149, count = 1}, --Head enchant
        {itemId = 44133, count = 1}, --Shoulder enchant
        {itemId = 44457, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44815, count = 1}, --Bracers enchant
        {itemId = 38967, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 38374, count = 1}, --Legs enchant
        {itemId = 39006, count = 1}, --Boots enchant
        {itemId = 44463, count = 1}, --Weapon enchant
        {itemId = 44466, count = 2}, --Weapon enchant
        {itemId = 41167, count = 1}, --Scope enchant
    }},
    {class="Hunter", spec="Marksmanship", items={
        {itemId = 41398, count = 1}, --Meta
        {itemId = 39999, count = 1}, --Gem1
        {itemId = 40014, count = 1}, --Gem2
        {itemId = 40022, count = 1}, --Gem3
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46377, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 44149, count = 1}, --Head enchant
        {itemId = 44133, count = 1}, --Shoulder enchant
        {itemId = 44457, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44815, count = 1}, --Bracers enchant
        {itemId = 38967, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 38374, count = 1}, --Legs enchant
        {itemId = 39006, count = 1}, --Boots enchant
        {itemId = 44463, count = 1}, --Weapon enchant
        {itemId = 44466, count = 2}, --Weapon enchant
        {itemId = 41167, count = 1}, --Scope enchant
    }},
    {class="Hunter", spec="Survival", items={
        {itemId = 41398, count = 1}, --Meta
        {itemId = 39999, count = 1}, --Gem1
        {itemId = 40014, count = 1}, --Gem2
        {itemId = 40022, count = 1}, --Gem3
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46377, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 44149, count = 1}, --Head enchant
        {itemId = 44133, count = 1}, --Shoulder enchant
        {itemId = 44457, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44815, count = 1}, --Bracers enchant
        {itemId = 38967, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 38374, count = 1}, --Legs enchant
        {itemId = 39006, count = 1}, --Boots enchant
        {itemId = 44463, count = 1}, --Weapon enchant
        {itemId = 44466, count = 2}, --Weapon enchant
        {itemId = 41167, count = 1}, --Scope enchant
    }},
    {class="Mage", spec="Arcane", items={
        {itemId = 41285, count = 1}, --Meta
        {itemId = 39998, count = 1}, --Gem1
        {itemId = 40051, count = 1}, --Gem2
        {itemId = 40026, count = 1}, --Gem3
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46376, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 44159, count = 1}, --Head enchant
        {itemId = 44135, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44470, count = 1}, --Bracers enchant
        {itemId = 38953, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 41602, count = 1}, --Legs enchant
        {itemId = 38986, count = 1}, --Boots enchant
        {itemId = 43987, count = 2}, --Weapon enchant
        {itemId = 45056, count = 1}, --Weapon enchant
        {itemId = 17020, count = 40}, --reagent1
        {itemId = 17031, count = 10}, --reagent2
        {itemId = 17032, count = 10}, --reagent3
    }},
    {class="Mage", spec="Fire", items={
        {itemId = 41285, count = 1}, --Meta
        {itemId = 39998, count = 1}, --Gem1
        {itemId = 40051, count = 1}, --Gem2
        {itemId = 40026, count = 1}, --Gem3
        {itemId = 40048, count = 1}, --Gem4
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46376, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 44159, count = 1}, --Head enchant
        {itemId = 44135, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44470, count = 1}, --Bracers enchant
        {itemId = 38953, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 41602, count = 1}, --Legs enchant
        {itemId = 38986, count = 1}, --Boots enchant
        {itemId = 43987, count = 1}, --Weapon enchant
        {itemId = 45056, count = 1}, --Weapon enchant
        {itemId = 17020, count = 40}, --reagent1
        {itemId = 17031, count = 10}, --reagent2
        {itemId = 17032, count = 10}, --reagent3
    }},
    {class="Mage", spec="Frost", items={
        {itemId = 41285, count = 1}, --Meta
        {itemId = 39998, count = 1}, --Gem1
        {itemId = 40051, count = 1}, --Gem2
        {itemId = 40026, count = 1}, --Gem3
        {itemId = 40048, count = 1}, --Gem4
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46376, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 44159, count = 1}, --Head enchant
        {itemId = 44135, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44470, count = 1}, --Bracers enchant
        {itemId = 38953, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 41602, count = 1}, --Legs enchant
        {itemId = 38986, count = 1}, --Boots enchant
        {itemId = 43987, count = 1}, --Weapon enchant
        {itemId = 45056, count = 1}, --Weapon enchant
        {itemId = 17020, count = 40}, --reagent1
        {itemId = 17031, count = 10}, --reagent2
        {itemId = 17032, count = 10}, --reagent3
    }},
    {class="Paladin", spec="Holy", items={
        {itemId = 41401, count = 1}, --Meta
        {itemId = 40012, count = 1}, --Gem1
        {itemId = 40047, count = 1}, --Gem2
        {itemId = 40025, count = 1}, --Gem3
        {itemId = 43015, count = 40}, --food buff
        {itemId = 13511, count = 10}, --flask
        {itemId = 33448, count = 40}, --potions
        {itemId = 44159, count = 1}, --Head enchant
        {itemId = 44135, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 38968, count = 1}, --Bracers enchant
        {itemId = 38979, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 41604, count = 1}, --Legs enchant
        {itemId = 38986, count = 1}, --Boots enchant
        {itemId = 38918, count = 1}, --Weapon enchant
        {itemId = 44455, count = 1}, --Shield enchant
        {itemId = 21177, count = 80}, --reagent1
    }},
    {class="Paladin", spec="Protection", items={
        {itemId = 41380, count = 1}, --Meta
        {itemId = 40008, count = 1}, --Gem1
        {itemId = 40003, count = 1}, --Gem2
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46379, count = 10}, --flask
        {itemId = 40093, count = 40}, --potions
        {itemId = 44150, count = 1}, --Head enchant
        {itemId = 44136, count = 1}, --Shoulder enchant
        {itemId = 38978, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44947, count = 1}, --Bracers enchant
        {itemId = 38990, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 38373, count = 1}, --Legs enchant
        {itemId = 39006, count = 1}, --Boots enchant
        {itemId = 38925, count = 1}, --Weapon enchant
        {itemId = 38945, count = 1}, --Shield enchant
        {itemId = 21177, count = 80}, --reagent1
    }},
    {class="Paladin", spec="Retribution", items={
        {itemId = 41398, count = 1}, --Meta - Relentless (Agi + 3% crit dmg)
		{itemId = 41381, count = 1}, --Meta - Persistent (42 AP 10% stun dur.)
        {itemId = 39996, count = 1}, --Gem1
        {itemId = 40038, count = 1}, --Gem2
        {itemId = 40014, count = 1}, --Gem3
        {itemId = 40041, count = 1}, --Gem4
        {itemId = 40022, count = 1}, --Gem5
		{itemId = 42702, count = 1}, --Gem6
		{itemId = 49110, count = 1}, --Gem7
        {itemId = 43015, count = 20}, --food buff
        {itemId = 46377, count = 10}, --flask
        {itemId = 40211, count = 20}, --potions
        {itemId = 30846, count = 1}, --Head enchant
        {itemId = 44133, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44815, count = 1}, --Bracers enchant
        {itemId = 44458, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 38374, count = 1}, --Legs enchant
        {itemId = 44469, count = 1}, --Boots enchant
        {itemId = 44463, count = 1}, --Weapon enchant - Massacre
		{itemId = 44493, count = 1}, --Weapon enchant - Berserking
		{itemId = 38998, count = 1}, --Weapon enchant - Deathfrost
        {itemId = 21177, count = 80}, --reagent1
		{itemId = 33504, count = 1}, --SoR Relic
		{itemId = 44455, count = 1}, --Shield Enchant
		{itemId = 44467, count = 1}, --1h Enchant
		
    }},
    {class="Priest", spec="Holy", items={
        {itemId = 41401, count = 1}, --Meta
        {itemId = 39998, count = 1}, --Gem1
        {itemId = 40051, count = 1}, --Gem2
        {itemId = 40026, count = 1}, --Gem3
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46376, count = 10}, --flask
        {itemId = 33448, count = 40}, --potions
        {itemId = 44159, count = 1}, --Head enchant
        {itemId = 44135, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44470, count = 1}, --Bracers enchant
        {itemId = 38979, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 41602, count = 1}, --Legs enchant
        {itemId = 38986, count = 1}, --Boots enchant
        {itemId = 45056, count = 1}, --Weapon enchant
        {itemId = 44467, count = 1}, --Weapon enchant
        {itemId = 44615, count = 40}, --reagent 1
    }},
    {class="Priest", spec="Discipline", items={
        {itemId = 41401, count = 1}, --Meta
        {itemId = 39998, count = 1}, --Gem1
        {itemId = 40051, count = 1}, --Gem2
        {itemId = 40026, count = 1}, --Gem3
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46376, count = 10}, --flask
        {itemId = 33448, count = 40}, --potions
        {itemId = 44159, count = 1}, --Head enchant
        {itemId = 44135, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44470, count = 1}, --Bracers enchant
        {itemId = 38979, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 41602, count = 1}, --Legs enchant
        {itemId = 38986, count = 1}, --Boots enchant
        {itemId = 45056, count = 1}, --Weapon enchant
        {itemId = 44467, count = 1}, --Weapon enchant
        {itemId = 44615, count = 40}, --reagent 1
    }},
    {class="Priest", spec="Shadow", items={
        {itemId = 41285, count = 1}, --Meta
        {itemId = 39998, count = 1}, --Gem1
        {itemId = 40051, count = 1}, --Gem2
        {itemId = 40026, count = 1}, --Gem3
        {itemId = 40048, count = 1}, --Gem4
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46376, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 44159, count = 1}, --Head enchant
        {itemId = 44135, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44470, count = 1}, --Bracers enchant
        {itemId = 38979, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 41602, count = 1}, --Legs enchant
        {itemId = 38986, count = 1}, --Boots enchant
        {itemId = 45056, count = 1}, --Weapon enchant
        {itemId = 44467, count = 1}, --Weapon enchant
        {itemId = 44615, count = 40}, --reagent 1
    }},
    {class="Rogue", spec="Assassination", items={
        {itemId = 41398, count = 1}, --Meta
        {itemId = 39999, count = 1}, --Gem1
        {itemId = 40014, count = 1}, --Gem2
        {itemId = 40022, count = 1}, --Gem3
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46377, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 44149, count = 1}, --Head enchant
        {itemId = 44133, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44815, count = 1}, --Bracers enchant
        {itemId = 44458, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 38374, count = 1}, --Legs enchant
        {itemId = 38986, count = 1}, --Boots enchant
        {itemId = 44493, count = 2}, --Weapon enchant
        {itemId = 43231, count = 10}, --poison1
        {itemId = 43233, count = 10}, --poison1
    }},
    {class="Rogue", spec="Combat", items={
        {itemId = 41398, count = 1}, --Meta
        {itemId = 39999, count = 1}, --Gem1
        {itemId = 40014, count = 1}, --Gem2
        {itemId = 40022, count = 1}, --Gem3
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46377, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 44149, count = 1}, --Head enchant
        {itemId = 44133, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44815, count = 1}, --Bracers enchant
        {itemId = 44458, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 38374, count = 1}, --Legs enchant
        {itemId = 38986, count = 1}, --Boots enchant
        {itemId = 44493, count = 1}, --Weapon enchant
        {itemId = 43231, count = 10}, --poison1
        {itemId = 43233, count = 10}, --poison1
    }},
    {class="Rogue", spec="Subtlety", items={
        {itemId = 41398, count = 1}, --Meta
        {itemId = 39999, count = 1}, --Gem1
        {itemId = 40014, count = 1}, --Gem2
        {itemId = 40022, count = 1}, --Gem3
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46377, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 44149, count = 1}, --Head enchant
        {itemId = 44133, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44815, count = 1}, --Bracers enchant
        {itemId = 44458, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 38374, count = 1}, --Legs enchant
        {itemId = 38986, count = 1}, --Boots enchant
        {itemId = 44493, count = 1}, --Weapon enchant
        {itemId = 43231, count = 10}, --poison1
        {itemId = 43233, count = 10}, --poison1
    }},
    {class="Shaman", spec="Elemental", items={
        {itemId = 41285, count = 1}, --Meta
        {itemId = 39998, count = 1}, --Gem1
        {itemId = 40051, count = 1}, --Gem2
        {itemId = 40026, count = 1}, --Gem3
        {itemId = 40048, count = 1}, --Gem4
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46376, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 44159, count = 1}, --Head enchant
        {itemId = 44135, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44470, count = 1}, --Bracers enchant
        {itemId = 38979, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 41604, count = 1}, --Legs enchant
        {itemId = 38986, count = 1}, --Boots enchant
        {itemId = 43987, count = 1}, --Weapon enchant
        {itemId = 44455, count = 1}, --Shield enchant
        {itemId = 45056, count = 1}, --Weapon enchant
        {itemId = 17030, count = 10}, -- reagent1
    }},
    {class="Shaman", spec="Enhancement", items={
        {itemId = 41398, count = 1}, --Meta
        {itemId = 39999, count = 1}, --Gem1
        {itemId = 40017, count = 1}, --Gem2
        {itemId = 40022, count = 1}, --Gem3
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46377, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 44149, count = 1}, --Head enchant
        {itemId = 44133, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44815, count = 1}, --Bracers enchant
        {itemId = 44458, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 38374, count = 1}, --Legs enchant
        {itemId = 38986, count = 1}, --Boots enchant
        {itemId = 44493, count = 2}, --Weapon enchant
        {itemId = 17030, count = 10}, -- reagent1
    }},
    {class="Shaman", spec="Restoration", items={
        {itemId = 41401, count = 1}, --Meta
        {itemId = 39998, count = 1}, --Gem1
        {itemId = 40051, count = 1}, --Gem2
        {itemId = 40025, count = 1}, --Gem3
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46376, count = 10}, --flask
        {itemId = 33448, count = 40}, --potions
        {itemId = 44159, count = 1}, --Head enchant
        {itemId = 44135, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44470, count = 1}, --Bracers enchant
        {itemId = 38979, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 41604, count = 1}, --Legs enchant
        {itemId = 38986, count = 1}, --Boots enchant
        {itemId = 44467, count = 1}, --Weapon enchant
        {itemId = 44455, count = 1}, --Shield enchant
        {itemId = 45056, count = 1}, --Weapon enchant
        {itemId = 17030, count = 10}, -- reagent1
    }},
    {class="Warlock", spec="Affliction", items={
        {itemId = 41285, count = 1}, --Meta
        {itemId = 39998, count = 1}, --Gem1
        {itemId = 40051, count = 1}, --Gem2
        {itemId = 40026, count = 1}, --Gem3
        {itemId = 40048, count = 1}, --Gem4
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46376, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 44159, count = 1}, --Head enchant
        {itemId = 44135, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44470, count = 1}, --Bracers enchant
        {itemId = 38979, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 41602, count = 1}, --Legs enchant
        {itemId = 38986, count = 1}, --Boots enchant
        {itemId = 45056, count = 1}, --Weapon enchant
        {itemId = 43987, count = 1}, --Weapon enchant
        {itemId = 6265, count = 10}, --reagent1
    }},
    {class="Warlock", spec="Demonology", items={
        {itemId = 41285, count = 1}, --Meta
        {itemId = 39998, count = 1}, --Gem1
        {itemId = 40051, count = 1}, --Gem2
        {itemId = 40026, count = 1}, --Gem3
        {itemId = 40048, count = 1}, --Gem4
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46376, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 44159, count = 1}, --Head enchant
        {itemId = 44135, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44470, count = 1}, --Bracers enchant
        {itemId = 38979, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 41602, count = 1}, --Legs enchant
        {itemId = 38986, count = 1}, --Boots enchant
        {itemId = 45056, count = 1}, --Weapon enchant
        {itemId = 43987, count = 1}, --Weapon enchant
        {itemId = 6265, count = 10}, --reagent1
    }},
    {class="Warlock", spec="Destruction", items={
        {itemId = 41285, count = 1}, --Meta
        {itemId = 39998, count = 1}, --Gem1
        {itemId = 40051, count = 1}, --Gem2
        {itemId = 40026, count = 1}, --Gem3
        {itemId = 40048, count = 1}, --Gem4        
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46376, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 44159, count = 1}, --Head enchant
        {itemId = 44135, count = 1}, --Shoulder enchant
        {itemId = 39003, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44470, count = 1}, --Bracers enchant
        {itemId = 38979, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 41602, count = 1}, --Legs enchant
        {itemId = 38986, count = 1}, --Boots enchant
        {itemId = 45056, count = 1}, --Weapon enchant
        {itemId = 43987, count = 1}, --Weapon enchant
        {itemId = 6265, count = 10}, --reagent1
    }},
    {class="Warrior", spec="Arms", items={
        {itemId = 41398, count = 1}, --Meta
        {itemId = 39996, count = 1}, --Gem1
        {itemId = 40038, count = 1}, --Gem2
        {itemId = 40014, count = 1}, --Gem3
        {itemId = 40041, count = 1}, --Gem4
        {itemId = 40022, count = 1}, --Gem5
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46377, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 44149, count = 1}, --Head enchant
        {itemId = 44133, count = 1}, --Shoulder enchant
        {itemId = 44457, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44815, count = 1}, --Bracers enchant
        {itemId = 44458, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 38374, count = 1}, --Legs enchant
        {itemId = 38986, count = 1}, --Boots enchant
        {itemId = 44493, count = 1}, --Weapon enchant
    }},
    {class="Warrior", spec="Fury", items={
        {itemId = 41398, count = 1}, --Meta
        {itemId = 39996, count = 1}, --Gem1
        {itemId = 40038, count = 1}, --Gem2
        {itemId = 40014, count = 1}, --Gem3
        {itemId = 40041, count = 1}, --Gem4
        {itemId = 40022, count = 1}, --Gem5
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46377, count = 10}, --flask
        {itemId = 40211, count = 40}, --potions
        {itemId = 44149, count = 1}, --Head enchant
        {itemId = 44133, count = 1}, --Shoulder enchant
        {itemId = 44457, count = 1}, --Cloak enchant
        {itemId = 44465, count = 1}, --Chest enchant
        {itemId = 44815, count = 1}, --Bracers enchant
        {itemId = 44458, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 38374, count = 1}, --Legs enchant
        {itemId = 38986, count = 1}, --Boots enchant
        {itemId = 44493, count = 2}, --Weapon enchant
    }},
    {class="Warrior", spec="Protection", items={
        {itemId = 41380, count = 1}, --Meta
        {itemId = 40034, count = 1}, --Gem1
        {itemId = 40089, count = 1}, --Gem2
        {itemId = 40008, count = 1}, --Gem3
        {itemId = 43015, count = 40}, --food buff
        {itemId = 46379, count = 10}, --flask
        {itemId = 40093, count = 40}, --potions
        {itemId = 44150, count = 1}, --Head enchant
        {itemId = 44136, count = 1}, --Shoulder enchant
        {itemId = 38978, count = 1}, --Cloak enchant
        {itemId = 39005, count = 1}, --Chest enchant
        {itemId = 44947, count = 1}, --Bracers enchant
        {itemId = 38990, count = 1}, --Gloves enchant
        {itemId = 41611, count = 1}, --Waist enchant
        {itemId = 38373, count = 1}, --Legs enchant
        {itemId = 39006, count = 1}, --Boots enchant
        {itemId = 38925, count = 1}, --Weapon enchant
        {itemId = 38945, count = 1}, --Shield enchant
    }},
}

local function createBundleFrame(parent_frame, specData, x, y)
	local f2 = CreateFrame("Button", nil, parent_frame)
	f2:SetFrameStrata('DIALOG')
	f2:SetHeight(25)
	f2:SetWidth(C.ui_width / 3 - 40)
	f2:SetPoint("CENTER", parent_frame, "TOPLEFT", x, y)

	f2:EnableMouse(true)

	f2.background = f2:CreateTexture(nil, "Background")
	f2.background:SetTexture(0,0,1, 0.5)
	f2.background:SetAllPoints()

	f2.text = f2:CreateFontString(nil, "ARTWORK")
	f2.text:SetFont("Interface\\AddOns\\MecPTR\\skurri.ttf", 12)
	f2.text:SetPoint("CENTER", 0, 0)
	f2.text:SetJustifyH("RIGHT")
	f2.text:SetJustifyV("TOP")
	f2.text:SetText(specData.spec.." "..specData.class)

	f2:SetScript("OnClick", function ()
        for index, value in pairs(specData.items) do
            SendChatMessage('.additem '..value.itemId..' '..value.count, "SAY")
        end
	end)
end

local f = CUIF.createBodyFrame("MecPTRBundlesFrame", "bundles")
local t = CUIF.addTextToFrame(f, "Click a button to add gems, consumables, reagents, and enchants for that spec", 12, 0, -5, "TOP", "MIDDLE", "TOP")
t:SetTextColor(0,1,0,1)

current_y = -10
current_col = 1
text_x_values = {C.ui_width/6 + 15, C.ui_width * (3/6), C.ui_width * (5/6) - 15}

for index, value in pairs(data) do
    --Increment current col if we hit a new column value
    if (index-1) % 3 == 0 then
        current_y = current_y - 30
        current_col = 1
    end

    createBundleFrame(f, value, text_x_values[current_col], current_y)

    current_col = current_col + 1
end