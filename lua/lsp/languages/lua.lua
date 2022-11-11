local lspconfig = require("lspconfig")

local function on_attach(client, bufnr)
  -- 禁用 LSP 的代码格式化
  client.server_capabilities.document_formatting = false
  client.server_capabilities.document_range_formatting = false

  -- 绑定键位
  require("key.lsp").bind_keys(bufnr)

  -- 保存时自动格式化
  vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format()")
end

local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

return {
  setup = function()
    lspconfig.sumneko_lua.setup({
      on_attach = on_attach,
      settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = "LuaJIT",
            -- Setup your lua path
            path = runtime_path,
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = { "vim" },
          },
          workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
          },
          -- Do not send telemetry data containing a randomized but unique identifier
          telemetry = {
            enable = false,
          },
        },
      },
    })
  end,
}
