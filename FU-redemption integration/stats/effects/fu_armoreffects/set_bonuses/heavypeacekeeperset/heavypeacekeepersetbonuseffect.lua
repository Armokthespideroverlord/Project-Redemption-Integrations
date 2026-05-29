require "/stats/effects/fu_armoreffects/setbonuses_common.lua"


weaponBonus={
	{stat = "powerMultiplier", effectiveMultiplier = 1.25}
}

armorBonus={
	{stat = "breathProtection", amount = 1},
	{stat = "gasImmunity", amount = 1},
	
	{stat = "poisonStatusImmunity", amount = 1},
	
	{stat = "electricStatusImmunity", amount = 1.0},
	{stat = "stunImmunity", amount = 1.0}
}

setName="fu_heavypeacekeeperset"

function init()
	setSEBonusInit(setName)
	effectHandlerList.weaponBonusHandle=effect.addStatModifierGroup({})
	checkWeapons()
	effectHandlerList.armorBonusHandle=effect.addStatModifierGroup(armorBonus)
end

function update(dt)
	if not checkSetWorn(self.setBonusCheck) then
		effect.expire()
	else
		checkWeapons()
	end
end

function checkWeapons()
	local weapons=weaponCheck({"dagger","pistol","rocketlauncher"})
	if weapons["either"] then
		effect.setStatModifierGroup(effectHandlerList.weaponBonusHandle,weaponBonus)
	else
		effect.setStatModifierGroup(effectHandlerList.weaponBonusHandle,{})
	end
end