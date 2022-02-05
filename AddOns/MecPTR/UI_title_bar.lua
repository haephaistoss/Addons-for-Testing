local C = _G["MecPTR"].config

--================================================================
--Title Bar
--================================================================
local f = CreateFrame("Frame", "MecPTRTitleBarFrame", MecPTRParentFrame)
f:SetFrameStrata('HIGH')
f:SetHeight(25)
f:SetWidth(C.ui_width)
f:SetPoint("TOPLEFT", UIParent, "TOPRIGHT", 0, 0)

--Background
f.background = f:CreateTexture(nil, "Background")
f.background:SetTexture(0.1, 0.1, 0.4, 0.9)
f.background:SetAllPoints()

--Movable
f:EnableMouse(true)
f:SetMovable(true)
f:SetClampedToScreen(true)
f:RegisterForDrag("LeftButton")
f:SetScript("OnDragStart",
		function(self) if self:IsMovable() then self:StartMoving() end end)
f:SetScript("OnDragStop", function(self)
	self:StopMovingOrSizing()
end)

-- Text
f.text = f:CreateFontString(nil, "ARTWORK")
f.text:SetFont("Interface\\AddOns\\MecPTR\\skurri.ttf", 16)
f.text:SetPoint("CENTER", 0, 0)
f.text:SetJustifyH("MIDDLE")
f.text:SetJustifyV("MIDDLE")
f.text:SetText("WotLK PTR Helper")

f:Show()

--================================================================
--Close Button
--================================================================
local esc = CreateFrame("Button", nil, MecPTRParentFrame)
esc:SetFrameStrata('DIALOG')
esc:SetHeight(20)
esc:SetWidth(40)
esc:SetPoint("RIGHT", MecPTRTitleBarFrame, "RIGHT", -5, 0)

esc:EnableMouse(true)

--Background
esc.background = esc:CreateTexture(nil, "Background")
esc.background:SetTexture(0.4, 0.4, 0.4, 1)
esc.background:SetAllPoints()

-- Text
esc.text = esc:CreateFontString(nil, "ARTWORK")
esc.text:SetFont("Interface\\AddOns\\MecPTR\\skurri.ttf", 14)
esc.text:SetPoint("CENTER", 0, 0)
esc.text:SetJustifyH("MIDDLE")
esc.text:SetJustifyV("MIDDLE")
esc.text:SetText('Close')

-- Handle click
esc:SetScript("OnClick", function()
	MecPTRParentFrame:Hide()
end)

esc:Show()
