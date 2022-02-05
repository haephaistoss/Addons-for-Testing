GameTooltip:HookScript("OnTooltipSetSpell", function(self)
    local name, _, spellId = self:GetSpell()
    if spellId then
        self:AddLine("spellId: " .. tostring(spellId),1,0,0)
    end
end)

hooksecurefunc(GameTooltip, "SetUnitAura", function(self, ...)
	local caster, _, _, spellId = select(8, UnitAura(...))
	if spellId then
		if caster then
			local name = UnitName(caster)
			self:AddLine('caster: '..name, 1, 0, 0)
		end
		self:AddLine('spellId: '..spellId, 1, 0, 0)
		self:Show()
	end
end)

GameTooltip:HookScript("OnTooltipSetItem", function(self)
	local _, itemLink = self:GetItem()

    if itemLink then
		itemId = tonumber(itemLink:match("item:(%d+)"))
        if itemId then
			self:AddLine("itemId: " .. tostring(itemId),1,0,0)
        end
    end
end)
