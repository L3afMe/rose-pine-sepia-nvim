local function hi_general(opts, hi, colors)
  return hi("Normal", {fg = colors.fg, bg = colors.bg}, "NormalFG", {fg = colors.fg}, "Identifier", {fg = colors.ppl}, "Special", {fg = colors.cyn}, "Statement", {fg = colors.ppl}, "Comment", {fg = colors.extras.dimmed}, "Constant", {fg = colors.red}, "Function", {fg = colors.ppl}, "String", {fg = colors.ylw}, "PreProc", {fg = colors.cyn}, "Variable", {fg = colors.ppl}, "Title", {fg = colors.ppl}, "Type", {fg = colors.cyn}, "Error", {fg = colors.red})
end
local function _1_(opts)
  local colors = require("rose-pine-sepia.colors")
  local utils = require("rose-pine-sepia.utils")
  local hi = utils.hi
  return hi_general(opts, hi, colors)
end
return {hi = _1_}
