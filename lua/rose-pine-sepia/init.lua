local function _1_(opts)
  local shared = require("rose-pine-sepia.shared")
  shared.hi(opts)
  local mode
  if opts["bg-only"] then
    mode = "bg"
  else
    mode = "fg"
  end
  local hi = require(("rose-pine-sepia." .. mode))
  return hi.hi(opts)
end
return {setup = _1_}
