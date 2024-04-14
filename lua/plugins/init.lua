local plugins = {
  {
    "stevearc/conform.nvim",
    config = function()
      require "configs.conform"
    end,
  },
 {
   "neovim/nvim-lspconfig",
     config = function()
       require("nvchad.configs.lspconfig").defaults()
       require "configs.lspconfig"
     end,
   },
   {
   	"williamboman/mason.nvim",
   	opts = {
   		eensure_installed = {
   			"lua-language-server", "stylua",
   			"html-lsp", "css-lsp" , "prettier", "rust_analyzer", "pyright", "ansible-language-server"
   		},
   	},
   },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "nvchad.configs.lspconfig"
--      require "custom.configs.lspconfig"
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
    },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require('rust-tools').setup(opts)
    end
  },
  {
    "mfussenegger/nvim-dap"
  },
  {
    "rcarriga/nvim-dap-ui"
  },
  {
 	"nvim-treesitter/nvim-treesitter",
   	opts = {
   		ensure_installed = {
   			"vim", "lua", "vimdoc",
        "html", "css"
   		},
   	},
   },
  "saecki/crates.nvim",
  tag = "stable",
  config = function()
    require('crates').setup()
  end,
}
return plugins
