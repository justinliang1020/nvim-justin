return {
  {
    "folke/tokyonight.nvim",
    opts = {
      colorscheme = "gruvbox",
      transparent = "true",
      styles = {
        sidebars = "transparent",
        floats = "transparent",
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
    "goolord/alpha-nvim",
    opts = function(_, opts)
      local logo = [[
                     __                   
 __                 /\ \__  __            
/\_\  __  __    ____\ \ ,_\/\_\    ___    
\/\ \/\ \/\ \  /',__\\ \ \/\/\ \ /' _ `\  
 \ \ \ \ \_\ \/\__, `\\ \ \_\ \ \/\ \/\ \ 
 _\ \ \ \____/\/\____/ \ \__\\ \_\ \_\ \_\
/\ \_\ \/___/  \/___/   \/__/ \/_/\/_/\/_/
\ \____/                                  
 \/___/
      ]]
      opts.section.header.val = vim.split(logo, "\n", { trimempty = true })
    end,
  },
}
