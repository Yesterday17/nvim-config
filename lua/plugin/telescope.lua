local status, telescope = pcall(require, "telescope")
if not status then
    vim.notify("Telescope was not found.")
  return
end

local telescope_key = require("key.plugin.telescope")
telescope_key.setup()

telescope.setup {
  defaults = {
    initial_mode = "insert",
    mappings = telescope_key.mapping_list,
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    },
  },
  extension = {},
}
