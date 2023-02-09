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
 "ellisonleao/gruvbox.nvim",
 "lunarvim/darkplus.nvim",
 "catppuccin/nvim",
{ 
    "nvim-treesitter/nvim-treesitter",
    run = function() 
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  },
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
{ 
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  },
{
      "numToStr/Comment.nvim",
      config = function() require('Comment').setup() end
  },
 "tpope/vim-dadbod", 
 "kristijanhusak/vim-dadbod-ui", 
 "rest-nvim/rest.nvim", 
  -- lsp completion 
 "neovim/nvim-lspconfig",
 'neovim/nvim-lspconfig',
 'hrsh7th/cmp-nvim-lsp',
 'hrsh7th/cmp-buffer',
 'hrsh7th/cmp-path',
 'hrsh7th/cmp-cmdline',
 'hrsh7th/nvim-cmp',

  --  For ultisnips users.
  'SirVer/ultisnips',
  'quangnguyen30192/cmp-nvim-ultisnips',

  -- transparent background
  'xiyaowong/nvim-transparent',

  -- 'ggandor/lightspeed.nvim'
}, opts)
