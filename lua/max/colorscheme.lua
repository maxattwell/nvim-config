-- local colorscheme = "darkplus"
local colorscheme = "gruvbox"
vim.cmd("TransparentEnable")

-- vim.o.background = "light" -- or "light" for light mode for gruvbox

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
