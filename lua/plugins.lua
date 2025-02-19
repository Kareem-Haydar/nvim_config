local M = {
  {
    "scottmckendry/cyberdream.nvim",
    event = "VeryLazy",
    opts = {
      extensions = {
        telescope = true,
        lualine = false
      }
    },
  },
  {
    'Mofiqul/vscode.nvim'
  },
  {
    'olivercederborg/poimandres.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "zenbones-theme/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "sainnhe/gruvbox-material",
    event = "VeryLazy",
  },
  {
    "folke/tokyonight.nvim",
    event = "VeryLazy",
    opts = require("configs.tokyonight"),
  },
  {
    "rebelot/kanagawa.nvim",
    event = "VeryLazy",
    config = function ()
      require("kanagawa").setup()
    end
  },
  {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "catppuccin/nvim",
    event = "VeryLazy",
    name = "catppuccin",
    opts = require("configs.catppuccin")
  },
  {
    "rose-pine/neovim",
    event = "VeryLazy",
    name = "rose-pine",
  },
  {
    'projekt0n/github-nvim-theme',
    name = 'github-theme',
    opts = {},
    event = "VeryLazy",
  },
  {
    'shaunsingh/nord.nvim',
    event = "VeryLazy",
  },
  {
    "olimorris/onedarkpro.nvim",
    opts = require("configs.onedarkpro"),
    event = "VeryLazy",
  },
  {
    'dstein64/vim-startuptime',
  },
  {
    'nvim-lua/plenary.nvim',
    lazy = true,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    lazy = true,
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    config = function()
      require("configs.telescope")
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    lazy = true,
    event = "VeryLazy",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = true,
    event = "VeryLazy",
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
      require("configs.treesitter")
    end
  },
  {
    'norcalli/nvim-colorizer.lua',
    event = "VeryLazy",
    config = function ()
      require("configs.colorizer")
    end
  },
  {
    "karb94/neoscroll.nvim",
    opts = {},
  },
--  {
--    "nvzone/volt" ,
--    lazy = true
--  },
--  {
--    "nvzone/menu",
--    lazy = true
--  },
--  {
--    "nvzone/minty",
--    lazy = true,
--    cmd = { "Shades", "Huefy" },
--  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("configs.nvim-tree")
    end,
  },
  {
    'metalelf0/base16-black-metal-scheme'
  },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require("configs.lualine")
    end
  },
  {
		"m4xshen/autoclose.nvim",
    event = "VeryLazy",
		config = function()
			require("autoclose").setup()
		end,
	},
	{
		"rafamadriz/friendly-snippets",
    event = "InsertEnter",
	},
	{
		"hrsh7th/nvim-cmp",
    lazy = true,
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
		config = function()
      require("configs.cmp")
    end
	},
	{
		"onsails/lspkind.nvim",
    lazy = true,
    event = "InsertEnter",
	},
  {
		"williamboman/mason.nvim",
    lazy = true,
    event = "VeryLazy",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
    lazy = true,
    event = "VeryLazy",
		config = function()
      require("configs.mason-lspconfig")
		end,
	},
	{
		"neovim/nvim-lspconfig",
    event = "VeryLazy",
    lazy = true,
		config = function()
      require("configs.lsp")
		end,
	},
  {
		"rcarriga/nvim-notify",
    event = "VeryLazy",
    lazy = true,
		config = function()
			require("configs.notify")
		end,
	},
  {
    "MunifTanjim/nui.nvim",
    lazy = true,
    event = "VeryLazy",
  },
  {
    "folke/noice.nvim",
    enabled = false;
    event = "VeryLazy",
    opts = {
    },
  },
  {
    "rmagatti/goto-preview",
    event = "BufEnter",
    config = function ()
      require("configs.goto-preview")
    end,
  },
}

return M
