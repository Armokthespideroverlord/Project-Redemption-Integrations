function ztDashKey(args)
  if args.moves["special2"] then
      if self.dashTimer == 0
          and self.dashCooldownTimer == 0
          and groundValid()
          and not mcontroller.crouching()
          and not status.statPositive("activeMovementAbilities")
		  and (args.moves["left"] or args.moves["right"]) then
			startDash(mcontroller.movingDirection())
      end
  end
end

local old_update = update
update = old_update and function(...) old_update(...) ztDashKey(...) end or ztDashKey