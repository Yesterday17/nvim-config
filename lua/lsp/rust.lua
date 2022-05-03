local lspconfig = require("lspconfig")

local function on_attach(client, bufnr)
  -- 禁用格式化功能，交给专门插件插件处理
  client.resolved_capabilities.document_formatting = false
  client.resolved_capabilities.document_range_formatting = false

  -- 快捷键
  require("key.lsp").bind_keys(bufnr)
end

return {
  setup = function()
    require("rust-tools").setup {
      server = {
        on_attach = on_attach,
        standalone = true,
      },
    }
  end
}
