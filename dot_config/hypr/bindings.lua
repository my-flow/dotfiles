-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- Show/hide the on-screen keyboard when folding into/out of tablet mode.
-- Binds every input device reporting SW_TABLET_MODE (bit 1 of its SW bitmap);
-- if several do, the OSK toggle is idempotent.
local function tablet_mode_switches()
  local names = {}
  local file = io.open("/proc/bus/input/devices", "r")
  if not file then
    return names
  end
  local name
  for line in file:lines() do
    name = line:match('^N: Name="(.*)"$') or name
    local bits = line:match("^B: SW=.-(%x+)%s*$")
    if bits and name and math.floor(tonumber(bits, 16) / 2) % 2 == 1 then
      table.insert(names, name)
    end
  end
  file:close()
  return names
end

for _, switch in ipairs(tablet_mode_switches()) do
  o.bind("switch:on:" .. switch, nil, "~/.local/bin/screen-rotation tablet-mode on", { locked = true })
  o.bind("switch:off:" .. switch, nil, "~/.local/bin/screen-rotation tablet-mode off", { locked = true })
end
