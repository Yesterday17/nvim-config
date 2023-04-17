return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp");

    if require("user.utils.platform").is_macos then
      opts.mapping["<D-i>"] = cmp.mapping.complete();
      opts.mapping["<D-j>"] = cmp.mapping.select_next_item();
      opts.mapping["<D-k>"] = cmp.mapping.select_prev_item();
    end

    return opts
  end
}
