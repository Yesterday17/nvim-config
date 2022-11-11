local os = vim.loop.os_uname().sysname

if os == "Linux" then
  require("lua.platform.linux.fcitx5")
end
