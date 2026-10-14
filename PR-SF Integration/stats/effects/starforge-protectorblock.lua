function init()
   effect.addStatModifierGroup({{stat = "electricResistance", amount = 0.50}, {stat = "electricStatusImmunity", amount = 1},{stat = "fireResistance", amount = 0.50}, {stat = "fireStatusImmunity", amount = 1},{stat = "iceResistance", amount = 0.50}, {stat = "iceStatusImmunity", amount = 1},{stat = "poisonResistance", amount = 0.50}, {stat = "poisonStatusImmunity", amount = 1}, {stat = "protection", amount = config.getParameter("protection", 0)}})

   script.setUpdateDelta(0)
end

function update(dt)

end

function uninit()
  
end
