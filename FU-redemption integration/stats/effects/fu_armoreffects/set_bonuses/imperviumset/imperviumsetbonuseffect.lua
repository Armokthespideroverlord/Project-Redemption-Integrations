require "/stats/effects/fu_armoreffects/setbonuses_common.lua"

armorBonus={

	{stat = "shieldStaminaRegen", baseMultiplier = 1.35},
	{stat = "shieldBonusShield", amount = 0.35},
	{stat = "perfectBlockLimitRegen", baseMultiplier = 1.35},
	{stat = "breathProtection", amount = 1},
	{stat = "gasImmunity", amount = 1},
	{stat = "extremepressureProtection", amount = 1},
	{stat = "pressureProtection", amount = 1},
	{stat = "sulphuricImmunity", amount = 1},
	{stat = "fireStatusImmunity", amount = 1},
	{stat = "biomeheatImmunity", amount = 1},
	{stat = "ffextremeheatImmunity", amount = 1}
	
	
}

setName="fu_imperviumset"

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
	local weaponShield=weaponCheck({"shield"})
	if weaponShield["either"] then
		effect.setStatModifierGroup(effectHandlerList.weaponBonusHandle,weaponBonus)
	else
		effect.setStatModifierGroup(effectHandlerList.weaponBonusHandle,{})
	end
end