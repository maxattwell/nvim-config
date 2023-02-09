local status_ok, whichkey = pcall(require, "which-key")
if not status_ok then
	return
end

function removeBackground()
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

function toggleDarkMode()
  if (vim.o.background == "light")
  then
    vim.cmd("set background=dark")
  else
    vim.cmd("set background=light")
  end
end


whichkey.setup({
})

whichkey.register({
  w = { "<c-w>", "Windows" },
  g = {"<cmd>LazyGit<cr>", "Git" },
  e = {"<cmd>NvimTreeFindFileToggle<cr>", "Explorer" },
  f = {
    name = "File",
    f = {"<cmd>Telescope find_files<cr>", "Find File" },
    b = {"<cmd>Telescope buffers<cr>", "Find Buffer" },
    g = {"<cmd>Telescope live_grep<cr>", "Live Grep" },
    s = {"<cmd>w<cr>", "Save File"},
  },
  t = {
    name = "ToggleTerm",
    f = {"<cmd>ToggleTerm direction=float<cr>", "Float" },
    h = {"<cmd>ToggleTerm direction=horizontal<cr>", "Horizontal" },
    v = {"<cmd>ToggleTerm size=100 direction=vertical<cr>", "Vertical" },
  },
  p = {"<cmd>Lazy<cr>", "Lazy Plugins"},
  r = {
    name = "Rest",
    r = {"<Plug>RestNvim", "Run Request"},
    p = {"<Plug>RestNvimPreview", "Preview Request"},
    l = {"<Plug>RestNvimLast", "Rerun last Request"},
  },
  d = {
    name = "Dadbod",
    d = {"<cmd>tab DBUI<cr>", "Tab DadbodUI"},
    u = {"<cmd>DBUI<cr>", "DadbodUI"},
  },
  c = {
    name = "Color Scheme",
    g = {"<cmd>colorscheme gruvbox<cr>", "Gruvbox"},
    v = {"<cmd>colorscheme darkplus<cr>", "Darkplus"},
    c = {"<cmd>colorscheme catppuccin<cr>", "Catppuccin"},
    d = {toggleDarkMode, "Toggle Dark Mode"},
    t = {"<cmd>TransparentToggle<cr>", "Toggle transparency"},
  },
}
  , { prefix = "<leader>" })
