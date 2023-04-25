return {
  -- Lspsaga
  {
    "glepnir/lspsaga.nvim",
    branch = "main",
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
    opts = {
      lightbulb = {
        enable = false,
      },
      outline = {
        keys = {
          expand_or_jump = "<CR>",
        },
      },
      callhierarchy = {
        keys = {
          expand_collapse = "<CR>",
        },
      },
      finder = {
        keys = {
          jump_to = "o",
          expand_or_jump = "<CR>",
        },
      },
    },
    keys = {
      -- { "n", "gf", "<cmd>Lspsaga lsp_finder<CR>" }, -- LSP finder - Find the symbol's definition
      -- { "n", "gd", "<cmd>Lspsaga peek_definition<CR>" }, -- Peek definition
      -- { "n", "gd", "<cmd>Lspsaga goto_definition<CR>" }, -- Go to definition
      -- { "n", "gD", vim.lsp.buf.declaration }, -- Go to declaration
      -- { "n", "gt", "<cmd>Lspsaga peek_type_definition<CR>" }, -- Peek type definition
      -- { "n", "gt", "<cmd>Lspsaga goto_type_definition<CR>" }, -- Go to type definition
      -- { "n", "go", "<cmd>Lspsaga outline<CR>" }, -- Toggle outline
      -- { { "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>" }, -- Code action
      -- { "n", "<leader>rn", "<cmd>Lspsaga rename<CR>" }, -- Rename all occurrences of the hovered word for the entire file
      -- { "n", "<leader>rn", "<cmd>Lspsaga rename ++project<CR>" }, -- Rename all occurrences of the hovered word for the selected files
      -- { "n", "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>" }, -- Call hierarchy
      -- { "n", "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>" }, -- Call hierarchy
      -- { "n", "K", "<cmd>Lspsaga hover_doc<CR>" }, -- Hover Doc
      -- { "n", "K", "<cmd>Lspsaga hover_doc ++keep<CR>" }, -- If you want to keep the hover window in the top right hand corner
      -- { { "n", "t" }, "<Leader>T", "<cmd>Lspsaga term_toggle<CR>" }, -- Floating terminal
      -- { "n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>" }, -- Show line diagnostics
      -- { "n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>" }, -- Show cursor diagnostics
      -- { "n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>" }, -- Show buffer diagnostics
      -- { "n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>" }, -- Diagnostic jump to prev
      -- { "n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>" }, -- Diagnostic jump to next
    },
  },
}
