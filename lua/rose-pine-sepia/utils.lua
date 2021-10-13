local function get(opts, name)
  local val = opts[name]
  local key
  if ("style" == name) then
    key = "gui"
  else
    key = ("gui" .. name)
  end
  if ((nil ~= val) or (name ~= "style")) then
    return (key .. "=" .. (val or "NONE"))
  else
    return ""
  end
end
local function link(group, linked_group)
  return vim.cmd(string.format("hi! link %s %s", group, linked_group))
end
local function clear(group)
  return vim.cmd(string.format("hi! %s clear", group))
end
local function hi(...)
  local args = {...}
  for idx = 1, #args, 2 do
    local group = args[idx]
    local opts = args[(idx + 1)]
    local fg = get(opts, "fg")
    local bg = get(opts, "bg")
    local sp = get(opts, "sp")
    local style = get(opts, "style")
    local cmd = string.format("hi! %s %s %s %s %s", group, fg, bg, sp, style)
    if (nil ~= opts.link) then
      link(group, opts.link)
    else
      vim.cmd(cmd)
    end
  end
  return nil
end
return {hi = hi, link = link, clear = clear}
