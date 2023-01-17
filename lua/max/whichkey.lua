local status_ok, whichkey = pcall(require, "which-key")
if not status_ok then
	return
end

whichkey.setup({
})

whichkey.register({
  f = {
    name = "Finder",
    f = {"<cmd>Telescope find_files theme=dropdown<cr>", "Find File" },
    b = {"<cmd>Telescope buffers theme=dropdown<cr>", "Find Buffer" },
    g = {"<cmd>Telescope live_grep theme=dropdown<cr>", "Live Grep" },
  },
  t = {
    name = "ToggleTerm",
    f = {"<cmd>ToggleTerm direction=float<cr>", "Float" },
    h = {"<cmd>ToggleTerm direction=horizontal<cr>", "Horizontal" },
    v = {"<cmd>ToggleTerm size=100 direction=vertical<cr>", "Vertical" },
  },
  p = {
    name = "Packer",
    s = {"<cmd>PackerSync<cr>", "Sync"},
    i = {"<cmd>PackerInstall<cr>", "Install"},
    c = {"<cmd>PackerClean<cr>", "Clean"},
  },
  r = {
    name = "Rest",
    r = {"<Plug>RestNvim", "Run Request"},
    p = {"<Plug>RestNvimPreview", "Preview Request"},
    l = {"<Plug>RestNvimLast", "Rerun last Request"},
  },
  w = {
    name = "Windows",
    j = {"<c-w>j", "Navigate Down"},
    k = {"<c-w>k", "Navigate Up"},
    h = {"<c-w>h", "Navigate Left"},
    l = {"<c-w>l", "Navigate Right"},
    J = {"<c-w>J", "Move to Bottom"},
    K = {"<c-w>K", "Move to Top"},
    H = {"<c-w>H", "Move to Left"},
    L = {"<c-w>L", "Move to Right"},
  },
  c = {
    name = "Color Scheme",
    g = {"<cmd>colorscheme gruvbox<cr>", "Gruvbox"},
    d = {"<cmd>colorscheme darkplus<cr>", "Darkplus"},
  },
}
  , { prefix = "<leader>" })
