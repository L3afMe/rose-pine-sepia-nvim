local function _1_(opts)
  local shared = require("rose-pine-sepia.shared")
  local opts0 = (opts or {})
  do end (vim.g)["colors_name"] = "rose-pine-sepia"
  shared.hi(opts0)
  local mode
  if opts0["bg-only"] then
    mode = "bg"
  else
    mode = "fg"
  end
  local hi = require(("rose-pine-sepia." .. mode))
  return hi.hi(opts0)
end
return {setup = _1_}
