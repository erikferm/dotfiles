local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

local autocmd_group = vim.api.nvim_create_augroup("Custom auto-commands", { clear = true })

vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  group = autocmd_group,
  callback = function(args)
    local opts = { buffer = args.buf }
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>r", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd('BufWritePre', {
        desc = 'Format on save',
        group = autocmd_group,
        buffer = args.buf,
        callback = function(args)
          vim.lsp.buf.format()
        end
      })
    end
  end
})


local default_setup = function(server)
  lspconfig[server].setup({})
end

mason.setup()
mason_lspconfig.setup({
  ensure_installed = {
    'lua_ls',
    'gopls',
  },
  handlers = {
    default_setup,
    lua_ls = function()
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            runtime = {
              version = 'LuaJIT'
            },
            workspace = {
              checkThirdParty = false,
              library = {
                vim.env.VIMRUNTIME
              }
            }
          },
        },
      })
    end
  },
})

local cmp = require('cmp')

cmp.setup({
  enabled = true,
  sources = {
    { name = 'nvim_lsp' },
    { name = 'nvim_lua' },
  },
  mapping = cmp.mapping.preset.insert({
    -- Enter key confirms completion item
    ['<CR>'] = cmp.mapping.confirm({ select = false }),

    -- Ctrl + space triggers completion menu
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})
