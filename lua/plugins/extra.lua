return {
  -- numToStr/Comment.nvim
  { "numToStr/Comment.nvim" },

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
}
