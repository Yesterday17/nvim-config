return {
  "maxmx03/solarized.nvim",
  as = "solarized",
  config = function()
    vim.o.background = 'dark'
    require("solarized"):setup {
      theme = "neovim",
      transparent = true
    }
  end,
}
