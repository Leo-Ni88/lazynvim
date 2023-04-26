return {
  -- numToStr/Comment.nvim
  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
    opts = {
      ignore = "^$",
      toggler = {
        line = "<leader>cc",
        block = "<leader>bc",
      },
      opleader = {
        line = "<leader>c",
        block = "<leader>b",
      },
    },
  },

  -- myword
  {
    "dwrdx/mywords.nvim",
    keys = {
      { "<leader>h", "<CMD>lua require'mywords'.hl_toggle()<CR>", desc = "Highlignt word under cursor" },
      { "<leader>H", "<CMD>lua require'mywords'.uhl_all()<CR>", desc = "Highlignt word under cursor" },
    },
  },

  -- Show colors
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "*" })
    end,
  },

  -- autopairs
  {
    "windwp/nvim-autopairs",
    opts = {
      disable_filetype = { "TelescopePrompt", "vim" },
    },
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
}
