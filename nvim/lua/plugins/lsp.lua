return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "saghen/blink.cmp",
      {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
          library = {
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    opts = {
      servers = {
        lua_ls = {},
        gopls = {},
        ruff = {},
      }
    },
    config = function(_, opts)
      local lspconfig = require("lspconfig")
      for server, config in pairs(opts.servers) do
        config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
        lspconfig[server].setup(config)
      end

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local bufnr = args.buf
          local options = { buffer = bufnr }

          vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, options)
          vim.keymap.set("n", "rn", function() vim.lsp.buf.rename() end, options)

          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then return end
          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format({ bufnr = bufnr, id = client.id })
              end
            })
          end
        end
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      {
        "williamboman/mason.nvim",
        opts = {},
      }
    },
    opts = {
      ensure_installed = {
        "lua_ls",
        "gopls",
        "ruff"
      }
    }
  },

}
