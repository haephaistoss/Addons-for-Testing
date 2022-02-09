MecPTR = {}
local AddOnName, AddOn = "MecPTR", MecPTR
_G[AddOnName] = AddOn

AddOn["config"] = {}
AddOn["common_UI_functions"] = {}

--================================================================
--Creating parent frame of the addon
--================================================================
local frame = CreateFrame("Frame", "MecPTRParentFrame")
frame:Hide()

function MecPTRParentFrame:ToggleWindow()
	if frame:IsVisible() then
		frame:Hide()
	else
		frame:Show()
	end
end

--================================================================
--Configuration
--================================================================
AddOn["config"] = {
	ui_height = 700,
	ui_width = 500
}

--================================================================
--Chat commands
--================================================================
_G.SLASH_MECPTR1 = '/mp'
_G.SLASH_MECPTR2 = '/mecptr'
function SlashCmdList.MECPTR(command)
	MecPTRParentFrame:ToggleWindow()
    --if frame:IsVisible() then
	--	frame:Hide()
	--else
	--	frame:Show()
	--end
end

--================================================================
--Keybindings
--================================================================
BINDING_HEADER_MecPTR= "MecPTR"
BINDING_NAME_MECPTR_TOGGLE = "Toggle window"