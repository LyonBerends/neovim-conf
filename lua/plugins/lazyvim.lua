return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = (function()
        if vim.o.background == "dark" then
          return "catppuccin-mocha"
        else
          return "catppuccin-latte"
        end
      end)(),
    },
  },
}
