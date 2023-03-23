local maps = {
  i = {},
  n = {},
  v = {},
  t = {},
}

-- disable scrolling to right when using mouse
-- scrolling to left is kept because it might be useful
maps.n["<ScrollWheelRight>"] = { "<nop>" }
maps.i["<ScrollWheelRight>"] = { "<nop>" }

-- Save without format
maps.n["<leader>W"] = { "<cmd>noautocmd w<cr>", desc = "Save without format" }
-- Override `<leader>C`
-- It was defined as "force close buffer" by AstroNvim, but it would be more useful to reopen the previous closed buffer.
-- Force closing is not gentle, and it's not a common operation.
-- However, accidentally close a buffer might be much common and deserves a shortcut.
maps.n["<leader>C"] = { "<cmd>b#<cr>", desc = "Reopen previous closed buffer" }

-- macOS settings
if require("user.utils.platform").is_macos then
  -- Toggle terminal
  maps.n["<D-'>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" }
  maps.t["<D-'>"] = maps.n["<D-'>"]
  maps.i["<D-'>"] = maps.n["<D-'>"]
  maps.v["<D-'>"] = maps.n["<D-'>"]

  -- Walk through
  -- mappings.n["<D-h>"] = mappings.n["<C-h>"]
  -- mappings.n["<D-j>"] = mappings.n["<C-j>"]
  -- mappings.n["<D-k>"] = mappings.n["<C-k>"]
  -- mappings.n["<D-l>"] = mappings.n["<C-l>"]
  -- mappings.i["<D-h>"] = mappings.i["<C-h>"]
  -- mappings.i["<D-j>"] = mappings.i["<C-j>"]
  -- mappings.i["<D-k>"] = mappings.i["<C-k>"]
  -- mappings.i["<D-l>"] = mappings.i["<C-l>"]
  -- mappings.t["<D-h>"] = mappings.t["<C-h>"]
  -- mappings.t["<D-j>"] = mappings.t["<C-j>"]
  -- mappings.t["<D-k>"] = mappings.t["<C-k>"]
  -- mappings.t["<D-l>"] = mappings.t["<C-l>"]

  -- Copilot
  maps.i["<D-l>"] = { "<cmd>Copilot suggestion accept<cr>" }

  -- Re-map help key to ESC on mac because it's so easy to hit accidentally on touchbar
  maps.n["<F1>"] = { "<ESC>" }
  maps.i["<F1>"] = { "<ESC>" }
  maps.t["<F1>"] = { "<ESC>" }
  maps.v["<F1>"] = { "<ESC>" }

  -- save
  maps.n["<D-s>"] = { "<cmd>w!<cr>" }
  maps.i["<D-s>"] = { "<cmd>w!<cr>" }
  maps.t["<D-s>"] = { "<cmd>w!<cr>" }
  maps.v["<D-s>"] = { "<cmd>w!<cr>" }
end

return maps
