local platform = require "user.utils.platform"

return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require "cmp"

    if platform.is_macos or platform.is_remote then
      opts.mapping["<D-i>"] = cmp.mapping.complete {}
      opts.mapping["<D-j>"] = cmp.mapping.select_next_item()
      opts.mapping["<D-k>"] = cmp.mapping.select_prev_item()
    end

    return opts
  end,
}
