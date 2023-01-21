local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
 vim.fn.system({
   "git",
   "clone",
   "--filter=blob:none",
   "https://github.com/folke/lazy.nvim.git",
   "--branch=stable", -- latest stable release
   lazypath,
 })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
 "nvim-lua/plenary.nvim", 
 "morhetz/gruvbox",
 "ellisonleao/gruvbox.nvim",
 "lunarvim/darkplus.nvim",
 "catppuccin/nvim",
 "kdheepak/lazygit.nvim",
 "nvim-lualine/lualine.nvim",
 "lewis6991/gitsigns.nvim",
 "nvim-tree/nvim-tree.lua",
 "nvim-tree/nvim-web-devicons",
 "akinsho/toggleterm.nvim",
 "nvim-telescope/telescope.nvim",
 "folke/which-key.nvim",
 "goolord/alpha-nvim",
 "ahmedkhalf/project.nvim", 
 "windwp/nvim-autopairs",
 "numToStr/Comment.nvim",
 "tpope/vim-dadbod", 
 "kristijanhusak/vim-dadbod-ui", 
 "dense-analysis/ale", 
 "rest-nvim/rest.nvim", 
}, opts)
