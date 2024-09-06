return {
  "neovim/nvim-lspconfig",
  dependencies = { "williamboman/mason.nvim", "folke/neodev.nvim" },
  config = function()
    local on_attach = function(_, bufnr)
      local opts = { buffer = bufnr }
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
      vim.keymap.set('n', '<space>fm', function()
        vim.lsp.buf.format { async = true }
      end, opts)
    end

    require("neodev").setup()
    require 'lspconfig'.pyright.setup {}
    require("lspconfig").lua_ls.setup({
      on_attach = on_attach,
      setting = {
        Lua = {
          telemetry = { enable = false },
          workspace = { checkThirdParty = false },
        }
      }
    })
  end
}
