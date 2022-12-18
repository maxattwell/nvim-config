local options = {
  clipboard = "unnamedplus",     -- Sys clipboard
  cmdheight = 2,                 -- cmd line height
  fileencoding = "utf-8",        -- encoding written to a file
  hlsearch = true,
  smartindent = true,
  termguicolors = true,
  relativenumber = true,
  number = true,
  cursorline = true,             -- highlight cursor line
  signcolumn = "yes",            -- always show sign column on left
  scrolloff = 8,                 -- keep cursor 8 lines  above bottom
}

for k, v in pairs(options) do 
  vim.opt[k] = v
end
