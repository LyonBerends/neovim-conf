return {
  {
    "f-person/auto-dark-mode.nvim",
    opts = {
      set_dark_mode = function()
        require("lazyvim").setup({ colorscheme = "catppuccin-mocha" })
      end,

      set_light_mode = function()
        require("lazyvim").setup({ colorscheme = "catppuccin-latte" })
      end,

      update_interval = 100,
      fallback = "dark",
    },
  },
}
