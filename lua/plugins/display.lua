return {
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
}
