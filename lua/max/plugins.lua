local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install plugins here
return packer.startup(function(use)
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  -- Treesitter
  use { 
    "nvim-treesitter/nvim-treesitter",
    run = function() 
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  }
  -- Colorscheme
  -- use { "morhetz/gruvbox", }         
  use { "ellisonleao/gruvbox.nvim", }         
  use { "lunarvim/darkplus.nvim", }         
  use { "catppuccin/nvim", as = "catppuccin" }
  
  -- Lazygit
  use { "kdheepak/lazygit.nvim", }    

  -- LuaLine
  use {				
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }
  use { "kyazdani42/nvim-web-devicons", }    

  -- Gitsigns
  use { "lewis6991/gitsigns.nvim", }

  -- NvimTree
  use {
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons", -- for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  
  -- ToggleTerm
  use { "akinsho/toggleterm.nvim", tag = "*", }

  -- Telescope
  use { "nvim-telescope/telescope.nvim", tag = "0.1.0", }

  -- WhichKey
 use { "folke/which-key.nvim", }

  -- Alpha (start screen)
 use { "goolord/alpha-nvim", }
  
  -- Project
  use { "ahmedkhalf/project.nvim" }
  
  -- Autopairs
  use { 
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  -- Commenter
   use {
      "numToStr/Comment.nvim",
      config = function()
	  require('Comment').setup()
      end
  } 

  -- dadbod (databases)
  use { "tpope/vim-dadbod" }
  
  -- dadbod-ui (databases)
  use { "kristijanhusak/vim-dadbod-ui" }
  
  -- ALE (asyncoronous linting engine)
  use { "dense-analysis/ale" }
  
  -- rest (wrapper for sending http requests through curl)
  use { "rest-nvim/rest.nvim" }
  use { "dstein64/vim-startuptime"}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

--local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
--if not vim.loop.fs_stat(lazypath) then
--  vim.fn.system({
--    "git",
--    "clone",
--    "--filter=blob:none",
--    "https://github.com/folke/lazy.nvim.git",
--    "--branch=stable", -- latest stable release
--    lazypath,
--  })
--end
--vim.opt.rtp:prepend(lazypath)
--
--require("lazy").setup({
--  "nvim-lua/plenary.nvim", 
--  "morhetz/gruvbox",
--  "ellisonleao/gruvbox.nvim",
--  "lunarvim/darkplus.nvim",
--  "catppuccin/nvim",
--  "kdheepak/lazygit.nvim",
--  "nvim-lualine/lualine.nvim",
--  "lewis6991/gitsigns.nvim",
--  "nvim-tree/nvim-tree.lua",
--  "nvim-tree/nvim-web-devicons",
--  "akinsho/toggleterm.nvim",
--  "nvim-telescope/telescope.nvim",
--  "folke/which-key.nvim",
--  "goolord/alpha-nvim",
--  "ahmedkhalf/project.nvim", 
--  "windwp/nvim-autopairs",
--  "numToStr/Comment.nvim",
--  "tpope/vim-dadbod", 
--  "kristijanhusak/vim-dadbod-ui", 
--  "dense-analysis/ale", 
--  "rest-nvim/rest.nvim", 
--}, opts)
