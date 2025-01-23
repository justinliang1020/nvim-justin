return {
  -- START display
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = "true",
      styles = {
        sidebars = "normal",
        floats = "normal",
      },
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
      },
    },
  },
  {
    "f-person/auto-dark-mode.nvim",
    opts = {
      set_dark_mode = function()
        vim.cmd("colorscheme tokyonight")
      end,
      set_light_mode = function()
        vim.cmd("colorscheme tokyonight-day")
      end,
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      scroll = {
        enabled = false,
      },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      preset = "classic",
      win = {
        col = 0.5,
        width = 300,
        height = 8,
        no_overlap = false,
      },
    },
  },
  -- END display
  -- START lint
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = { "markdownlint" },
      },
      linters = {
        markdownlint = {
          args = { "--disable", "MD013", "--" },
        },
      },
    },
  },
  -- END lint
  -- START lazydev config: https://github.com/folke/lazydev.nvim
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "luvit-meta/library", words = { "vim%.uv" } },
      },
    },
  },
  { "Bilal2453/luvit-meta", lazy = true }, -- optional `vim.uv` typings
  { -- optional completion source for require statements and module annotations
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      table.insert(opts.sources, {
        name = "lazydev",
        group_index = 0, -- set group index to 0 to skip loading LuaLS completions
      })
    end,
  },
  { "folke/neodev.nvim", enabled = false }, -- make sure to uninstall or disable neodev.nvim
  -- END lazydev config
}
