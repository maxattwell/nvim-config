require'nvim-treesitter.configs'.setup {
  ensure_installed = { 
    "lua",
    "html",
    "javascript",
    "json",
    "css",
    "python",
    "typescript",
    "vue",
},

  sync_install = false,
  auto_install = false,
  highlight = {
    enable = true,
  },
}
