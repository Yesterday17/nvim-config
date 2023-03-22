return {
  is_macos = vim.fn.has "macunix",
  is_wayland = os.getenv "XDG_SESSION_TYPE" == "wayland",
  is_x11 = os.getenv "XDG_SESSION_TYPE" == "x11",
}
