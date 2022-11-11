local function on_attach(client, bufnr)
  -- 禁用格式化功能，交给专门插件插件处理
  client.server_capabilities.document_formatting = false
  client.server_capabilities.document_range_formatting = false

  -- 快捷键
  require("key.lsp").bind_keys(bufnr)
end

return {
  setup = function()
    require("rust-tools").setup({
      tools = {
        autoSetHints = true,
        hover_with_actions = true,
        runnables = {
          use_telescope = true,
        },
        inlay_hints = {
          show_parameter_hints = false,
          parameter_hints_prefix = "",
          other_hints_prefix = "",
        },
      },
      server = {
        on_attach = on_attach,
        standalone = true,
      },
    })
  end,
}
