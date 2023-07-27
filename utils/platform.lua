function array_starts_with(list, prefix)
  for _, v in ipairs(list) do
    if string.sub(v, 1, #prefix) == prefix then return true end
  end

  return false
end

return {
  is_macos = vim.fn.has "macunix",
  is_wayland = os.getenv "XDG_SESSION_TYPE" == "wayland",
  is_x11 = os.getenv "XDG_SESSION_TYPE" == "x11",
  is_remote = array_starts_with(vim.v.argv, "--headless") or array_starts_with(vim.v.argv, "--server"),
}
