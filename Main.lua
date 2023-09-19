function(e,...)
    if e == "UPDATE_MOUSEOVER_UNIT" and not InCombatLockdown() and IsSkinnable() and (not aura_env.lastMouseoverSwap or GetTime() - aura_env.lastMouseoverSwap > 1) then
        if aura_env.config.SkinningSet ~= '' then
            EquipSet(aura_env.config.SkinningSet)
        end
        aura_env.lastMouseoverSwap = GetTime() -- 8613
    elseif (e == "UNIT_SPELLCAST_SUCCEEDED") and HasSkinned(...) then 
        if aura_env.config.normalSet ~= '' then
            --EquipSet(aura_env.config.normalSet)
            C_Timer.After(aura_env.config.timerOpt, function() EquipSet(aura_env.config.normalSet) end)    
        end
    end
end
