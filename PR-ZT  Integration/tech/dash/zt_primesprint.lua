function ztDashKey(args)
  if args.moves["special2"] then
    local direction
    if args.moves["left"] and not args.moves["right"] then
      direction = -1
    elseif args.moves["right"] and not args.moves["left"] then
      direction = 1
    end

    if direction then
      if args.moves["run"] then
        tryStartSprint(direction)
      else
        tryStartBlink(direction)
      end
    end
  end
end

local old_update = update
update = old_update and function(...)
    old_update(...)
    ztDashKey(...)
  end or ztDashKey