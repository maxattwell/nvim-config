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
    h = {"<cmd>ToggleTerm direction=horizontal<cr>", "Horizontal" },
    f = {"<cmd>ToggleTerm direction=float<cr>", "Float" },
  },
  p = {
    name = "Packer",
    s = {"<cmd>PackerSync<cr>", "Sync"},
    i = {"<cmd>PackerInstall<cr>", "Install"},
    c = {"<cmd>PackerClean<cr>", "Clean"},
  },
}
  , { prefix = "<leader>" })
