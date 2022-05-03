local status, vgit = pcall(require, "vgit")
if not status then
    vim.notify("nvim-tree was not found.")
  return
end

vgit.setup {}
