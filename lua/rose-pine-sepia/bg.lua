local function hi_general(opts, hi, colors)
  return hi("Normal", {fg = colors.fg, bg = colors.bg}, "NormalFG", {fg = colors.fg}, "Identifier", {bg = colors.xlppl}, "Special", {}, "Statement", {}, "Comment", {fg = colors.extras.dimmed}, "Constant", {}, "String", {bg = colors.xlylw}, "PreProc", {bg = colors.xlcyn}, "Variable", {bg = colors.xlppl}, "Title", {}, "Error", {bg = colors.xlred})
end
local function fix_langs(hi, colors)
  return hi("makeIdent", {bg = colors.xlred})
end
local function _1_(opts)
  local colors = require("rose-pine-sepia.colors")
  local utils = require("rose-pine-sepia.utils")
  local hi = utils.hi
  hi_general(opts, hi, colors)
  return fix_langs(hi, colors)
end
return {hi = _1_}
