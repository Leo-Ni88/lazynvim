return {
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
      ensure_installed = {
        "c",
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "go",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
      rainbow = {
        enable = true,
        disable = { "html" },
        extended_mode = false,
        max_file_lines = nil,
      },
      autotag = { enable = true },
      incremental_selection = { enable = true },
      indent = { enable = true },
    },
  },

  -- lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- autoformat = false,
    },
  },

  -- mason-lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = true,
    opts = {
      ensure_installed = {
        "clangd",
        "pyright",
        "go",
        "lua_ls",
        "stylua",
        "shellcheck",
        "shfmt",
      },
    },
  },

  -- Lspsaga
  {
    "nvimdev/lspsaga.nvim",
    lazy = false,
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
        detail = false,
        close_after_jump = true,
        layout = "float",
        keys = {
          jump = "<CR>",
        },
      },
      callhierarchy = {
        keys = {
          edit = "<CR>",
        },
      },
      finder = {
        keys = {
          toggle_or_open = "<CR>",
        },
      },
    },
    keys = {
      { "gf", "<cmd>Lspsaga finder<CR>", { desc = "Find the symbol's definition" } },
      { "gD", "<cmd>Lspsaga peek_definition<CR>", { desc = "Peek definition" } },
      { "gd", "<cmd>Lspsaga goto_definition<CR>", { desc = "Go to definition" } },
      { "Gd", vim.lsp.buf.declaration, { desc = "Go to declaration" } },
      { "gT", "<cmd>Lspsaga peek_type_definition<CR>", { desc = "Peek type definition" } },
      { "gt", "<cmd>Lspsaga goto_type_definition<CR>", { desc = "Go to type definition" } },
      { "go", "<cmd>Lspsaga outline<CR>", { desc = "Toggle outline" } },
      { "<leader>ca", "<cmd>Lspsaga code_action<CR>", { desc = "Code action" } },
      {
        "<leader>rn",
        "<cmd>Lspsaga rename<CR>",
        { desc = "Rename all occurrences of the hovered word for the entire file" },
      },
      {
        "<leader>rn",
        "<cmd>Lspsaga rename ++project<CR>",
        { desc = "Rename all occurrences of the hovered word for the selected files" },
      },
      { "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>", { desc = "Incoming calls" } },
      { "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>", { desc = "Outgoing calls" } },
      { "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "Hover doc" } },
      { "Kh", "<cmd>Lspsaga hover_doc ++keep<CR>", { desc = "Hover doc(keep window)" } },
      { "<Leader>T", "<cmd>Lspsaga term_toggle<CR>", { desc = "Floating terminal" } },
      { "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>", { desc = "Show line diagnostics" } },
      { "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { desc = "Show cursor diagnostics" } },
      { "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>", { desc = "Show buffer diagnostics" } },
      { "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "Diagnostic jump to prev" } },
      { "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "Diagnostic jump to next" } },
      {
        "<C-,>",
        function()
          require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
        end,
        { desc = "Diagnostic jump prev" },
      },
      {
        "<C-.>",
        function()
          require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
        end,
        { desc = "Diagnostic jump next" },
      },
    },
  },
}
