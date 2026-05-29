require "/scripts/status.lua"

function update(dt)
  if status.resourcePositive("energy") and not status.resourceLocked("energy") then
    status.setResourcePercentage("energyRegenBlock", 1.0)
    status.addEphemeralEffect("protectoratearmoroff")
  else
    status.addEphemeralEffect("protectoratearmorstims")
  end
end
