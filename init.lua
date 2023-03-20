if vim.g.neovide then
  vim.o.guifont = "JetBrains_Mono:h16"
  vim.g.neovide_scale_factor = 1

  -- animations
  vim.g.neovide_cursor_animation_length = 0 -- disable cursor animation
  -- vim.g.neovide_scroll_animation_length = 0.3

  -- Helper function for transparency formatting
  local alpha = function()
    return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency = 0.0
  vim.g.transparency = 0.8
  vim.g.neovide_background_color = "#002b36" .. alpha() -- "#0f1117" .. alpha()

  -- fps
  -- vim.g.neovide_refresh_rate = 120
  -- vim.g.neovide_refresh_rate_idle = 30
  -- vim.g.neovide_no_idle = true

  vim.g.neovide_confirm_quit = true
  -- vim.g.neovide_fullscreen = true
  vim.g.neovide_remember_window_size = true
end

-- vim.t.is_transparent = 1
return {
  updater = {
    channel = "stable",
    version = "latest",
    -- nil, true, false (nil will pin plugins on stable only)
    pin_plugins = nil,
    --
    -- [Changelog related]
    skip_prompts = false,  -- skip promits about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false,     -- automatically quit the current session after a successful update
    -- [Nightly feature]
    branch = "nightly",
    commit = nil,
    -- [Custom remote]
    remote = "origin",
    remotes = {
      -- ["remote_name"] = "github_user/repo"
    }
  },
  colorscheme = "solarized",
}
