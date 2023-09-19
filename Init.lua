
local function IsSkinnable()
    return UnitIsDead("mouseover") and GameTooltipTextLeft3:GetText() == "Skinnable"
end


local function HasSkinned(...)
    local _, _, spellID = ...
    if spellID and spellID == 8613 then 
        return true
    else 
        return false
    end
end

--[[ local function IsSkinning()
    local _, _, _, _, _, _, _, _, spellID = UnitCastingInfo("player")
    if spellID and spellID == 8690 then 
        -- 8613 Skinning spellid
        return true
    else
        return false
    end
end
--]]
