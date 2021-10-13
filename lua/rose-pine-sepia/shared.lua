local function lang_fixes()
  local utils = require("rose-pine-sepia.utils")
  return utils.hi("FennelString", {link = "String"}, "FennelSymbol", {link = "NormalFG"}, "FennelKeyword", {link = "NormalFG"}, "FennelSpecialForm", {link = "Function"}, "clojureVariable", {link = "Variable"}, "makeIdent", {link = "Special"}, "makeCommands", {link = "NormalFG"}, "makeTarget", {link = "Function"}, "vimVar", {link = "NormalFG"}, "vimOption", {link = "NormalFG"}, "vimFuncName", {link = "NormalFG"}, "vimHiClear", {link = "NormalFG"}, "vimHiKeyList", {link = "NormalFG"}, "vimHiGroup", {link = "NormalFG"}, "vimHiAttrib", {link = "NormalFG"}, "vimHiNmbr", {link = "NormalFG"}, "vimGroup", {link = "NormalFG"}, "vimFgBgAttrib", {link = "NormalFG"})
end
local function hi_ui(opts, hi, colors)
  local _1_
  if opts["show-eob"] then
    _1_ = colors.ovr
  else
    _1_ = colors.bg
  end
  return hi("Cursor", {fg = colors.bg}, "CursorLine", {bg = colors.ovr}, "CursorColumn", {bg = colors.ovr}, "Visual", {bg = colors.ovr}, "Search", {bg = colors.ovr}, "SignColumn", {fg = colors.extras.dimmed}, "LineNr", {fg = colors.extras.dimmed}, "CursorLineNr", {fg = colors.extras.dimmed}, "VertSplit", {fg = colors.ovr, bg = colors.ovr}, "EndOfBuffer", {fg = _1_}, "NormalFloat", {fg = colors.fg, bg = colors.bg}, "FloatBorder", {fg = colors.fg, bg = colors.bg}, "Folded", {fg = colors.extras.dimmed, bg = colors.ovr}, "FoldColumn", {link = "LineNr"}, "MatchParen", {fg = colors.fg, bg = colors.ovr, style = "BOLD"}, "StatusLine", {fg = colors.ovr, bg = colors.fg}, "StatusLineNC", {fg = colors.bg, bg = colors.extras.dimmed}, "LspDiagnosticsDefaultError", {fg = colors.red}, "LspDiagnosticsDefaultHint", {fg = colors.extras.dimmed}, "LspDiagnosticsDefaultInformation", {fg = colors.blu}, "LspDiagnosticsDefaultWarning", {fg = colors.ylw}, "ErrorMsg", {fg = colors.red}, "Directory", {fg = colors.ppl}, "DiffAdd", {fg = colors.fg, bg = colors.lgrn}, "DiffDelete", {fg = colors.fg, bg = colors.lred}, "DiffText", {fg = colors.fg, bg = colors.lblu}, "DiffChange", {fg = colors.fg, bg = colors.lblu})
end
local function hi_plugins(opts, hi, colors)
  local _3_
  if opts["bright-parens"] then
    _3_ = {colors.red, colors.grn, colors.ylw, colors.blu, colors.ppl, colors.cyn}
  else
    _3_ = {colors.blu, colors.ppl, colors.cyn, colors.blu, colors.ppl, colors.cyn}
  end
  vim.g["rainbow_conf"] = {guifgs = _3_}
  hi("GitSignsAdd", {bg = colors.lgrn}, "GitSignsChange", {bg = colors.lcyn}, "GitSignsDelete", {bg = colors.lred})
  hi("VGitViewWordAdd", {bg = colors.ppl}, "VGitViewWordRemove", {bg = colors.ppl}, "VGitSignAdd", {fg = colors.grn}, "VGitSignChange", {fg = colors.blu}, "VGitSignRemove", {fg = colors.red}, "VGitIndicator", {fg = colors.ppl}, "VGitStatus", {fg = "#FF00FF", bg = "#FFFF00"}, "VGitBorder", {fg = colors.ppl})
  hi("BufferCurrent", {fg = colors.fg, bg = colors.ovr}, "BufferCurrentIndex", {link = "BufferCurrent"}, "BufferCurrentMod", {link = "BufferCurrent"}, "BufferCurrentTarget", {link = "BufferCurrent"}, "BufferCurrentSign", {bg = colors.ovr}, "BufferVisible", {fg = colors.extras.dimmed, bg = colors.bg}, "BufferVisibleIndex", {link = "BufferVisible"}, "BufferVisibleMod", {link = "BufferVisible"}, "BufferVisibleTarget", {link = "BufferVisible"}, "BufferVisibleSign", {fg = colors.fg, bg = colors.bg}, "BufferInactive", {link = "BufferVisible"}, "BufferInactiveIndex", {link = "BufferInactive"}, "BufferInactiveMod", {link = "BufferInactive"}, "BufferInactiveTarget", {link = "BufferInactive"}, "BufferInactiveSign", {link = "BufferVisibleSign"}, "BufferTabpageFill", {fg = colors.gg, bg = colors.bg})
  return hi("WhichKey", {fg = colors.ppl}, "WhichKeySeperator", {fg = colors.extras.dimmed}, "WhichKeyGroup", {fg = colors.grn}, "WhichKeyDesc", {fg = colors.cyn})
end
local function _5_(opts)
  local colors = require("rose-pine-sepia.colors")
  local utils = require("rose-pine-sepia.utils")
  local hi = utils.hi
  hi_ui(opts, hi, colors)
  hi_plugins(opts, hi, colors)
  return lang_fixes()
end
return {["hi-ui"] = hi_ui, ["hi-plugins"] = hi_plugins, ["lang-fixes"] = lang_fixes, hi = _5_}
