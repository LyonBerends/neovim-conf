return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          -- Ensure tpp is in the filetypes list
          filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto", "tpp" },
          -- Use command-line arguments to tell clangd to treat .tpp as C++ headers
          keys = {
            { "<leader>ch", "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch Source/Header (C++)" },
          },
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern("compile_commands.json", "compile_flags.txt", ".git")(fname)
          end,
          capabilities = {
            offsetEncoding = { "utf-16" },
          },
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-style=llvm",
            -- This flag is the secret sauce for template files
            "-xc++",
          },
        },
      },
    },
  },
}
