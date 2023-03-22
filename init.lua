vim.t.is_transparent = 1

if vim.g.neovide then
  vim.o.guifont = "JetBrains_Mono:h17"
  vim.g.neovide_scale_factor = 1

  vim.g.neovide_ime_enabled = false
  vim.g.neovide_ime_at_bottom = true
  vim.api.nvim_create_autocmd("ModeChanged", {
    pattern = "i*:*",
    callback = function() vim.g.neovide_ime_enabled = false end,
  })
  vim.api.nvim_create_autocmd("ModeChanged", {
    pattern = "*:i*",
    callback = function() vim.g.neovide_ime_enabled = true end,
  })

  -- animations
  vim.g.neovide_cursor_animation_length = 0 -- disable cursor animation
  vim.g.neovide_scroll_animation_length = 0.01

  if vim.t.is_transparent == 1 then
    -- Helper function for transparency formatting
    -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
    vim.g.transparency = 0.85
    vim.g.neovide_transparency = 0.0

    vim.g.neovide_floating_blur_amount_x = 2.0
    vim.g.neovide_floating_blur_amount_y = 2.0
  end

  -- fps
  vim.g.neovide_no_idle = true
  vim.g.neovide_refresh_rate = 60
  -- vim.g.neovide_refresh_rate_idle = 30

  vim.g.neovide_confirm_quit = true
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_remember_window_position = true
  -- vim.g.neovide_fullscreen = true

  -- disable special character inputed by alt+key
  vim.g.neovide_input_macos_alt_is_meta = true
end

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
    },
  },
  colorscheme = "solarized",
}
