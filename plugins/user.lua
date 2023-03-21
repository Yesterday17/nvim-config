return {
  "maxmx03/solarized.nvim",
  as = "solarized",
  config = function()
    local solarized = require "solarized"

    solarized:setup {
      theme = "neovim",
      transparent = vim.t.is_transparent == 1,
    }

    if vim.g.neovide and vim.t.is_transparent == 1 then
      local function on_background_change()
        local colors = solarized.colors
        local alpha = function() return string.format("%x", math.floor((255 * vim.g.transparency) or 0.8)) end
        vim.g.neovide_background_color = colors.bg .. alpha()
      end

      on_background_change()
      vim.api.nvim_create_autocmd("OptionSet", {
        pattern = "background",
        callback = on_background_change,
      })
    end
  end,
}
