local C = _G["MecPTR"].config
local CUIF = _G["MecPTR"].common_UI_functions

data = {
    {col=1, type="Combat", cmdName=".combatstop",reqParams=nil, optParams=nil,desc="Causes the target to drop combat state entirely"},
    {col=1, type="Combat", cmdName=".damage",reqParams="#amount", optParams=nil,desc="Deals #amount of damage to the target"},
    {col=1, type="Combat", cmdName=".debug combat",reqParams=nil, optParams=nil,desc="Displays selected target's combat state information"},
    {col=1, type="Combat", cmdName=".debug threat",reqParams=nil, optParams=nil,desc="Displays selected target's threat list information"},
    {col=1, type="Combat", cmdName=".debug threatinfo",reqParams=nil, optParams=nil,desc="Displays selected target's threat info (threat modifiers, redirects, etc.)"},
    {col=1, type="Combat", cmdName=".die",reqParams=nil, optParams=nil,desc="Kills selected target"},
    {col=1, type="NPC", cmdName=".cast back",reqParams="#spellId", optParams="#triggeredStr",desc="Causes selected creature to cast a spell back at the player (will be triggered if 'triggered' string provided)"},
    {col=1, type="NPC", cmdName=".cast dest",reqParams="#spellId #x #y #z", optParams="#triggeredStr",desc="Causes selected target to cast a spell at given coordinates"},
    {col=1, type="NPC", cmdName=".cast self",reqParams="#spellId", optParams="#triggeredStr",desc="Causes target to cast a spell on themselves"},
    {col=1, type="NPC", cmdName=".cast target",reqParams="#spellId", optParams="#triggeredStr",desc="Causes selected creature to cast a spell on their primary target (tank)"},
    {col=1, type="NPC", cmdName=".debug boundary",reqParams=nil, optParams=nil,desc="Displays selected boss' combat boundary (if a boss has one)"},
    {col=1, type="NPC", cmdName=".npc info",reqParams=nil, optParams=nil,desc="Displays information about selected npc"},
    {col=1, type="NPC", cmdName=".respawn",reqParams=nil, optParams=nil,desc="Respawns all creatures in proximity (or the one selected)"},
    {col=1, type="Events", cmdName=".event activelist",reqParams=nil, optParams=nil,desc="Displays active game events"},
    {col=1, type="Events", cmdName=".event info",reqParams="#eventId", optParams=nil,desc="Displays information regarding specified game event"},
    {col=1, type="Events", cmdName=".event start",reqParams="#eventId", optParams=nil,desc="Starts a given game event"},
    {col=1, type="Events", cmdName=".event stop",reqParams="#eventId", optParams=nil,desc="Stops a given game event"},
    {col=1, type="Guild", cmdName=".guild create",reqParams='#"leaderName" "guildName"', optParams=nil,desc="Creates a guild with a given name, lead by a player with given leader name"},
    {col=1, type="Guild", cmdName=".guild info",reqParams=nil, optParams="#guildId",desc="Shows information about target's guild (or guild with given id)"},
    {col=1, type="Guild", cmdName=".guild invite",reqParams='#"characterName" "guildName"', optParams=nil,desc="Invites a player with a given name to a guild of a given name"},
    {col=1, type="Guild", cmdName=".guild rename",reqParams='#"guildName" "newGuildName"', optParams=nil,desc="Renames a guild"},
    {col=1, type="Instance", cmdName=".instance getbossstate",reqParams="#encounterId", optParams="#playerName",desc="Displays boss state for specified encounterId"},
    {col=1, type="Instance", cmdName=".instance listbinds",reqParams=nil, optParams=nil,desc="Displays a list of instances selected player is bound to"},
    {col=1, type="Instance", cmdName=".instance savedata",reqParams=nil, optParams=nil,desc="Saves player's instance data to DB"},
    {col=1, type="Instance", cmdName=".instance setbossstate",reqParams="#encounterId #state", optParams="#playerName",desc="Sets instance boss state"},
    {col=1, type="Instance", cmdName=".instance stats",reqParams=nil, optParams=nil,desc="Displays information about instances server-wide"},
    {col=1, type="Instance", cmdName=".instance unbind",reqParams='#mapId (can also type "all" to clear all binds)', optParams="#difficulty",desc='Unbinds selected player from given dungeon (or all if "all" used as parameter)'},
    {col=2, type="Lookups", cmdName=".lookup area",reqParams="#pattern", optParams=nil,desc="Displays all values from the category that match given pattern"},
    {col=2, type="Lookups", cmdName=".lookup creature",reqParams="#pattern", optParams=nil,desc="Displays all values from the category that match given pattern"},
    {col=2, type="Lookups", cmdName=".lookup event",reqParams="#pattern", optParams=nil,desc="Displays all values from the category that match given pattern"},
    {col=2, type="Lookups", cmdName=".lookup faction",reqParams="#pattern", optParams=nil,desc="Displays all values from the category that match given pattern"},
    {col=2, type="Lookups", cmdName=".lookup item",reqParams="#pattern", optParams=nil,desc="Displays all values from the category that match given pattern"},
    {col=2, type="Lookups", cmdName=".lookup item id",reqParams="#pattern", optParams=nil,desc="Displays all values from the category that match given pattern"},
    {col=2, type="Lookups", cmdName=".lookup item set",reqParams="#pattern", optParams=nil,desc="Displays all values from the category that match given pattern"},
    {col=2, type="Lookups", cmdName=".lookup map",reqParams="#pattern", optParams=nil,desc="Displays all values from the category that match given pattern"},
    {col=2, type="Lookups", cmdName=".lookup map id",reqParams="#pattern", optParams=nil,desc="Displays all values from the category that match given pattern"},
    {col=2, type="Lookups", cmdName=".lookup object",reqParams="#pattern", optParams=nil,desc="Displays all values from the category that match given pattern"},
    {col=2, type="Lookups", cmdName=".lookup quest",reqParams="#pattern", optParams=nil,desc="Displays all values from the category that match given pattern"},
    {col=2, type="Lookups", cmdName=".lookup quest id",reqParams="#pattern", optParams=nil,desc="Displays all values from the category that match given pattern"},
    {col=2, type="Lookups", cmdName=".lookup skill",reqParams="#pattern", optParams=nil,desc="Displays all values from the category that match given pattern"},
    {col=2, type="Lookups", cmdName=".lookup spell",reqParams="#pattern", optParams=nil,desc="Displays all values from the category that match given pattern"},
    {col=2, type="Lookups", cmdName=".lookup spell id",reqParams="#pattern", optParams=nil,desc="Displays all values from the category that match given pattern"},
    {col=2, type="Lookups", cmdName=".lookup tele",reqParams="#pattern", optParams=nil,desc="Displays all values from the category that match given pattern"},
    {col=2, type="Lookups", cmdName=".lookup template",reqParams="#pattern", optParams=nil,desc="Displays all values from the category that match given pattern"},
    {col=2, type="Lookups", cmdName=".lookup title",reqParams="#pattern", optParams=nil,desc="Displays all values from the category that match given pattern"},
    {col=2, type="Misc", cmdName=".achievement add",reqParams="#id", optParams=nil,desc="Awards achievement with a given ID"},
    {col=2, type="Misc", cmdName=".aura",reqParams="#spellIdOrLink", optParams=nil,desc="Applies an aura to the target"},
    {col=2, type="Misc", cmdName=".commands",reqParams=nil, optParams=nil,desc="Displays a list of available commands"},
    {col=2, type="Misc", cmdName=".debug quest reset",reqParams="#type (daily/weekly/monthly/all)", optParams=nil,desc="Triggers server-side reset of daily/weekly/monthly quest status"},
    {col=2, type="Misc", cmdName=".distance",reqParams=nil, optParams=nil,desc="Displays distance information between the player and the target"},
    {col=2, type="Misc", cmdName=".gps",reqParams=nil, optParams=nil,desc="Displays current coordinate information for target (or self)"},
    {col=2, type="Misc", cmdName=".group list",reqParams=nil, optParams=nil,desc="Displays a list of player groups active on the server"},
    {col=2, type="Misc", cmdName=".help",reqParams=nil, optParams=nil,desc=""},
    {col=2, type="Misc", cmdName=".unaura",reqParams='#spell (or "all")', optParams=nil,desc='Removes an aura (or all auras if "all" provided) from the target'},
    {col=2, type="Objects", cmdName=".gobject activate",reqParams="#dbGUID", optParams=nil,desc="Activates gameobject with given dbGUID"},
    {col=2, type="Objects", cmdName=".gobject near",reqParams=nil, optParams="#distance",desc="Displays a list of nearby gameobjects"},
    {col=2, type="Objects", cmdName=".gobject target",reqParams=nil, optParams="#objectId",desc="Displays information about the closest gameobject"},
    {col=2, type="Pet", cmdName=".pet create",reqParams=nil, optParams=nil,desc="Creates a pet based on selected beast npc"},
    {col=2, type="Pet", cmdName=".pet learn",reqParams="#spellIdOrLink", optParams=nil,desc="Teaches pet a spell"},
    {col=2, type="Pet", cmdName=".pet level",reqParams="#value", optParams=nil,desc="Changes pet's level"},
    {col=2, type="Pet", cmdName=".pet unlearn",reqParams="#spellIdOrLink", optParams=nil,desc="Removes a spell from the pet"},
    {col=3, type="Player", cmdName=".additem",reqParams="#itemId", optParams="#count",desc="Adds items with specified entry to the target player"},
    {col=3, type="Player", cmdName=".additem set",reqParams="#setId", optParams=nil,desc="Adds an item set to the target player"},
    {col=3, type="Player", cmdName=".cd",reqParams=nil, optParams="#spellIdOrLink",desc="Resets all cooldowns (or cooldowns for a spell if provided)"},
    {col=3, type="Player", cmdName=".character changefaction",reqParams=nil, optParams=nil,desc="Adds an option to change character's faction"},
    {col=3, type="Player", cmdName=".character changerace",reqParams=nil, optParams=nil,desc="Adds an option to change character's race"},
    {col=3, type="Player", cmdName=".character customize",reqParams=nil, optParams=nil,desc="Adds an option to change character's appearance"},
    {col=3, type="Player", cmdName=".character level",reqParams="#newLevel", optParams=nil,desc="Sets character's level to given value"},
    {col=3, type="Player", cmdName=".character rename",reqParams=nil, optParams=nil,desc="Adds an option to change character's name"},
    {col=3, type="Player", cmdName=".character reputation",reqParams=nil, optParams=nil,desc="Displays player's reputation information"},
    {col=3, type="Player", cmdName=".character template",reqParams="#templateId", optParams="#autoEquip?",desc="Gives selected player items from given template (will autoequip them if autoequip is enabled)"},
    {col=3, type="Player", cmdName=".cheat casttime",reqParams=nil, optParams=nil,desc="Toggles instant cast time"},
    {col=3, type="Player", cmdName=".cheat cooldown",reqParams=nil, optParams=nil,desc="Toggles no cooldowns"},
    {col=3, type="Player", cmdName=".cheat god",reqParams=nil, optParams=nil,desc="Toggles god mode (not taking any damage)"},
    {col=3, type="Player", cmdName=".cheat power",reqParams=nil, optParams=nil,desc="Toggles power requirements"},
    {col=3, type="Player", cmdName=".cheat status",reqParams=nil, optParams=nil,desc="Displays cheat status"},
    {col=3, type="Player", cmdName=".cheat taxi",reqParams=nil, optParams=nil,desc="Enables/disables having all taxi nodes unlocked"},
    {col=3, type="Player", cmdName=".cheat waterwalk",reqParams=nil, optParams=nil,desc="Toggles waterwalking"},
    {col=3, type="Player", cmdName=".cooldown",reqParams=nil, optParams="#spellIdOrLink",desc="Resets all cooldowns (or cooldowns for a spell if provided)"},
    {col=3, type="Player", cmdName=".gm fly",reqParams="#enable?", optParams=nil,desc="Toggles flying"},
    {col=3, type="Player", cmdName=".gm off",reqParams=nil, optParams=nil,desc="Disables GM mode"},
    {col=3, type="Player", cmdName=".gm on",reqParams=nil, optParams=nil,desc="Enables GM mode"},
    {col=3, type="Player", cmdName=".group repair",reqParams=nil, optParams=nil,desc="Repairs the entire group"},
    {col=3, type="Player", cmdName=".group revive",reqParams=nil, optParams=nil,desc="Revives the entire group"},
    {col=3, type="Player", cmdName=".levelup",reqParams="#value", optParams=nil,desc="Changes player's level by given value (can be negative to delevel)"},
    {col=3, type="Player", cmdName=".maxskill",reqParams=nil, optParams=nil,desc="Updates all weapon skills to maximum for selected player's current level"},
    {col=3, type="Player", cmdName=".mod attackpower",reqParams="#value", optParams=nil,desc="Sets target's attack power to given value"},
    {col=3, type="Player", cmdName=".mod combatrating",reqParams="#combatRatingId #value", optParams=nil,desc="Sets target's chosen combat rating to given value (combatRatingId can be found in CombatRatings sheet)"},
    {col=3, type="Player", cmdName=".mod energy",reqParams="#value #maxvalue", optParams=nil,desc="Sets energy to specified value"},
    {col=3, type="Player", cmdName=".mod haste",reqParams="#change", optParams=nil,desc="Modifies target's haste values (can be negative)"},
    {col=3, type="Player", cmdName=".mod hp",reqParams="#value #maxvalue", optParams=nil,desc="Sets hp to specified value"},
    {col=3, type="Player", cmdName=".mod mana",reqParams="#value #maxvalue", optParams=nil,desc="Sets mana to specified value"},
    {col=3, type="Player", cmdName=".mod money",reqParams="#value", optParams=nil,desc="Modifies money by given value"},
    {col=3, type="Player", cmdName=".mod rage",reqParams="#value #maxvalue", optParams=nil,desc="Sets rage to specified value"},
    {col=3, type="Player", cmdName=".mod rangedattackpower",reqParams="#value", optParams=nil,desc="Sets target's ranged attack power to given value"},
    {col=3, type="Player", cmdName=".mod reputation",reqParams="#factionId #value", optParams=nil,desc="Modifies reputation for given faction"},
    {col=3, type="Player", cmdName=".mod runicpower",reqParams="#value #maxvalue", optParams=nil,desc="Sets runic power to specified value"},
    {col=3, type="Player", cmdName=".mod scale",reqParams="#value", optParams=nil,desc="Modifies target scale"},
    {col=3, type="Player", cmdName=".mod speed",reqParams="#value", optParams=nil,desc="Changes all player speed types"},
    {col=3, type="Player", cmdName=".mod spellpower",reqParams="#value", optParams=nil,desc="Sets target's spell power to given value"},
    {col=3, type="Player", cmdName=".mod talentpoints",reqParams="#value", optParams=nil,desc="Modifies talent points by given value"},
    {col=3, type="Player", cmdName=".reset spells",reqParams=nil, optParams=nil,desc="Resets player's spells to default state"},
    {col=3, type="Player", cmdName=".reset talents",reqParams=nil, optParams=nil,desc="Resets talents"},
    {col=3, type="Player", cmdName=".revive",reqParams=nil, optParams=nil,desc="Revives a selected player"},
    {col=3, type="Player", cmdName=".setskill",reqParams="#skill #value", optParams=nil,desc="Sets specified skill to given value"},
    {col=4, type="PvP", cmdName=".arena captain",reqParams="#teamId", optParams="#playerGUID",desc="Makes selected player (or provided by guid) the captain of an arena team with given ID"},
    {col=4, type="PvP", cmdName=".arena create",reqParams='#"name" #type', optParams=nil,desc="Creates an arena team with selected target or self as captain, with a given name and type (2/3/5)"},
    {col=4, type="PvP", cmdName=".arena disband",reqParams="#teamId", optParams=nil,desc="Disbands an arena team with given ID"},
    {col=4, type="PvP", cmdName=".arena info",reqParams="#teamId", optParams=nil,desc="Displays information about an arena team with given ID (e.g. rating, type, name, member info)"},
    {col=4, type="PvP", cmdName=".arena lookup",reqParams="#tag", optParams=nil,desc="Looks for arena teams matching given tag (e.g. name)"},
    {col=4, type="PvP", cmdName=".arena rename",reqParams='#"oldName" #"newName"', optParams=nil,desc="Renames an arena team with provided old name to new name"},
    {col=4, type="PvP", cmdName=".bf enable",reqParams="#battleId", optParams=nil,desc="Enables or disables battlefield with given id (toggle)"},
    {col=4, type="PvP", cmdName=".bf start",reqParams="#battleId", optParams=nil,desc="Starts battlefield with given id (Only 1 = Wintergrasp on Wotlk)"},
    {col=4, type="PvP", cmdName=".bf stop",reqParams="#battleId", optParams=nil,desc="Stops battlefield with given id"},
    {col=4, type="PvP", cmdName=".bf switch",reqParams="#battleId", optParams=nil,desc="Ends a battlefield and switches control over it"},
    {col=4, type="PvP", cmdName=".bf timer",reqParams="#battleId #time", optParams=nil,desc="Sets specific battlefield's timer (time in seconds)"},
    {col=4, type="PvP", cmdName=".debug arena",reqParams=nil, optParams=nil,desc="Toggles arena testing (instant start, 1v1 allowed)"},
    {col=4, type="PvP", cmdName=".debug bg",reqParams=nil, optParams=nil,desc="Toggles battleground testing (instant start, 1v0 allowed)"},
    {col=4, type="PvP", cmdName=".flusharenapoints",reqParams=nil, optParams=nil,desc="Causes a server-wide weekly arena flush"},
    {col=4, type="PvP", cmdName=".honor add",reqParams="#amount", optParams=nil,desc="Rewards honor equal to specified amount"},
    {col=4, type="PvP", cmdName=".honor add kill",reqParams=nil, optParams=nil,desc="Rewards honor amount equal to killing selected unit"},
    {col=4, type="PvP", cmdName=".mod arenapoints",reqParams="#value", optParams=nil,desc="Modifies arena points by given value"},
    {col=4, type="PvP", cmdName=".mod honor",reqParams="#value", optParams=nil,desc="Modifies honor points by given value"},
    {col=4, type="Quest", cmdName=".quest add",reqParams="#questIdOrLink", optParams=nil,desc="Adds a quest to the target player"},
    {col=4, type="Quest", cmdName=".quest complete",reqParams="#questIdOrLink", optParams=nil,desc="Completes quest objectives"},
    {col=4, type="Quest", cmdName=".quest remove",reqParams="#questIdOrLink", optParams=nil,desc="Removes a quest from quest log as well as from reward history (so it can be retaken again)"},
    {col=4, type="Quest", cmdName=".quest reward",reqParams="#questIdOrLink", optParams=nil,desc="Completes and rewards a given quest (simulates turning a quest in)"},
    {col=4, type="Spell", cmdName=".cast dist",reqParams="#spellId #distance", optParams="#triggeredStr",desc="Casts a spell onto a point within provided distance"},
    {col=4, type="Spell", cmdName=".learn",reqParams="#spellIdOrLink", optParams=nil,desc="Learns given spell"},
    {col=4, type="Spell", cmdName=".learn all crafts",reqParams=nil, optParams=nil,desc="Learns all crafting recipes"},
    {col=4, type="Spell", cmdName=".learn all debug",reqParams=nil, optParams=nil,desc="Learns all debug spells (such as Berserk or Uber Heal)"},
    {col=4, type="Spell", cmdName=".learn all default",reqParams=nil, optParams=nil,desc="Learns all default skills, custom spells and quest rewarded spells"},
    {col=4, type="Spell", cmdName=".learn all languages",reqParams=nil, optParams=nil,desc="Learns all languages"},
    {col=4, type="Spell", cmdName=".learn all pettalents",reqParams=nil, optParams=nil,desc="Learns all pet talents"},
    {col=4, type="Spell", cmdName=".learn all recipes",reqParams="#phrase", optParams=nil,desc="Learns all crafting recipes containing a given phrase"},
    {col=4, type="Spell", cmdName=".learn all talents",reqParams=nil, optParams=nil,desc="Learns all talents"},
    {col=4, type="Spell", cmdName=".learn my quests",reqParams=nil, optParams=nil,desc="Learns all spells that can be learned through class quests"},
    {col=4, type="Spell", cmdName=".learn my trainer",reqParams=nil, optParams=nil,desc="Learns all spells that can be learned from the class trainers"},
    {col=4, type="Spell", cmdName=".unlearn",reqParams="#spellIdOrLink", optParams=nil,desc="Unlearns given spell"},
    {col=5, type="Travel", cmdName=".appear",reqParams="#playerName", optParams=nil,desc="Teleports the user to specified player"},
    {col=5, type="Travel", cmdName=".go creature",reqParams="#entry", optParams=nil,desc="Teleports the player to the first found creature with given entry"},
    {col=5, type="Travel", cmdName=".go creature guid",reqParams="#guid", optParams=nil,desc="Teleports the player to the creature with specified DB guid"},
    {col=5, type="Travel", cmdName=".go gameobject",reqParams="#dbGUID", optParams=nil,desc="Teleports the player to the gameobject with specified DB guid"},
    {col=5, type="Travel", cmdName=".go gameobject id",reqParams="#entry", optParams=nil,desc="Teleports the player to the first found gameobject with given entry"},
    {col=5, type="Travel", cmdName=".go object",reqParams="#dbGUID", optParams=nil,desc="Teleports the player to the gameobject with specified DB guid"},
    {col=5, type="Travel", cmdName=".go offset",reqParams="#x #y #z", optParams=nil,desc="Teleports the player by a specified offset (e.g. '.go 0 0 5' will teleport 5 units higher than current position)"},
    {col=5, type="Travel", cmdName=".go xyz",reqParams="#x #y #z", optParams=nil,desc="Teleports the player to provided xyz coordinates"},
    {col=5, type="Travel", cmdName=".group summon",reqParams=nil, optParams="#targetName",desc="Teleport the given character and his group to the target of self. Teleported only online characters but original selected group member can be offline"},
    {col=5, type="Travel", cmdName=".recall",reqParams=nil, optParams=nil,desc="Recalls the player to last teleport position"},
    {col=5, type="Travel", cmdName=".summon",reqParams="#playerName", optParams=nil,desc="Summons a player to current position"},
    {col=5, type="Travel", cmdName=".tele",reqParams="#name", optParams=nil,desc="Teleports to a location that matches the given name"},
}

local f = CUIF.createBodyFrame("MecPTRCmdsFrame", "cmds")

local t = CUIF.addTextToFrame(f, "Hover commands for details. Left click puts command into chat box. Right click to run command.", 12, 0, -5, "TOP", "MIDDLE", "TOP")
t:SetTextColor(0,1,0,1)

local function createCommandFrame(parent_frame, cmdData, x, y)
	local f2 = CreateFrame("Button", nil, parent_frame)
	f2:SetFrameStrata('DIALOG')
	f2:SetHeight(9)
	f2:SetWidth(C.ui_width / 5 - 7)
	f2:SetPoint("TOPLEFT", parent_frame, "TOPLEFT", x, y)

	f2:EnableMouse(true)

	f2.background = f2:CreateTexture(nil, "Background")
	f2.background:SetTexture(0,0,1, 0.5)
	f2.background:SetAllPoints()

	f2.text = f2:CreateFontString(nil, "ARTWORK")
	f2.text:SetFont("Interface\\AddOns\\MecPTR\\skurri.ttf", 9)
	f2.text:SetPoint("TOPLEFT", 5, 0.5)
	f2.text:SetJustifyH("RIGHT")
	f2.text:SetJustifyV("TOP")
	f2.text:SetText(cmdData.cmdName)

    --Item Link
	f2:SetScript("OnEnter", function()
		GameTooltip:SetOwner(f2, "ANCHOR_TOP")
        GameTooltip:AddLine(cmdData.cmdName)
        if cmdData.reqParams ~= nil then
		    GameTooltip:AddLine('Required parameters: '..cmdData.reqParams)
        end
        if cmdData.optParams ~= nil then
		    GameTooltip:AddLine('Optional parameters: '..cmdData.optParams)
        end
        GameTooltip:AddLine('Description: '..cmdData.desc)
		GameTooltip:Show()
	end)

	f2:SetScript("OnLeave", function()
		GameTooltip:Hide()
	end)

    f2:RegisterForClicks("LeftButtonUp", "RightButtonUp")

	f2:SetScript("OnClick", function (self, button, down)
        local eb = DEFAULT_CHAT_FRAME.editBox
        if button == "LeftButton" then
            ChatEdit_ActivateChat(eb)
            eb:SetText(cmdData.cmdName..' ')
        elseif button == "RightButton" then
            eb:ClearFocus()
            --whisper because we cannot "say" when dead
            SendChatMessage(cmdData.cmdName, "SAY")
        end
	end)
end

current_y = -7
current_col = 1
current_type = "default"
text_x_values = {5, 105, 205, 305, 405}

for index, value in pairs(data) do
    --Increment current col if we hit a new column value
    if current_col ~= value.col then
        current_y = -7
        current_col = current_col + 1
    end

    --Type titles
    if current_type ~= value.type then
        current_y = current_y - 15
        local t2 = CUIF.addTextToFrame(f, value.type, 9, text_x_values[current_col], current_y, "TOPLEFT", "RIGHT", "MIDDLE")
        t2:SetTextColor(1,0,0,1)
        current_y = current_y - 5
        current_type = value.type
    end

    --Add the command frame
    createCommandFrame(f, value, text_x_values[current_col], current_y - 5)
    --CUIF.addTextToFrame(f, value.cmdName, 9, text_x_values[current_col], current_y - 5, "TOPLEFT", "RIGHT", "MIDDLE")

    current_y = current_y - 10.5
end
