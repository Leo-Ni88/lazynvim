return {
  -- Colorschema
  { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = { transparent = false }, enabled = true },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    opts = { commentStyle = { italic = true } },
    enabled = true,
  },
  { "rebelot/kanagawa.nvim", lazy = false, priority = 1000, enabled = true },
  { "EdenEast/nightfox.nvim", lazy = false, priority = 1000, enabled = true },
  { "projekt0n/github-nvim-theme", lazy = false, priority = 1000, enabled = true },
  { "rose-pine/neovim", lazy = false, name = "rose-pine", priority = 1000, enabled = true },
  { "sainnhe/sonokai", lazy = false, priority = 1000, enabled = true },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "tokyonight",
      -- colorscheme = "catppuccin-latte",
      -- colorscheme = "kanagawa",
      -- colorscheme = "habamax",
      colorscheme = "sonokai",
      -- colorscheme = "nightfox",
      -- colorscheme = "github_dark",
      -- colorscheme = "rose-pine",
    },
  },

  -- Background Transparent
  {
    "xiyaowong/nvim-transparent",
    opts = {
      extra_groups = {
        -- make buffline transparent
        "BufferlineBuffer",
        "BufferlineBufferSelected",
        "BufferlineBufferVisible",
        "BufferLineSeparator",
        "BufferLineSeparatorSelected",
        "BufferLineSeparatorVisible",
        "BufferLineNumbers",
        "BufferLineNumbersSelected",
        "BufferLineNumbersVisible",
        "BufferLineCloseButton",
        "BufferLineCloseButtonSelected",
        "BufferLineCloseButtonVisible",
        "BufferLineModifiedSelected",
        "BufferLineModifiedVisible",
        "BufferLineModified",
        "BufferLineIndicatorSelected",
        "BufferLineIndicatorVisible",
        "BufferLineBackground",
        "BufferLineTab",
        "BufferLineTabClose",
        "BufferLineTabSelected",
        "BufferLineTabSeparator",
        "BufferLineTabSeparatorSelected",
        "BufferLineFill",
        "BufferLineGroupSeparator",
        "BufferLineDevIconLua",
        "BufferLineDevIconLuaInactive",
        "BufferLineDevIconLuaSelected",

        "OutlinePreviewNormal",
        "IndentBlanklineChar",

        -- lspsaga group
        "SagaShadow",
        "SagaCollapse",
        "SagaBorder",
        "SagaNormal",
        "SagaExpand",
        "SagaWinbarArray",
        "SagaWinbarFileIcon",
        "SagaWinbarUnitNeoTreeFloatNormal",

        -- make floating windows transparent
        "LspFloatWinNormal",
        "Normal",
        "NormalFloat",
        "FloatBorder",
        "FloatTitle",
        "TelescopeNormal",
        "TelescopeBorder",
        "TelescopePromptBorder",

        -- Signs
        "GitSignsDelete",
        "GitSignsChange",
        "GitSignsAdd",
        "DiagnosticSignError",
        "DiagnosticSignWarn",
        "DiagnosticSignInfo",
        "DiagnosticSignHint",
        "DiagnosticSignOk",

        -- NeoTree
        "NeoTreeExpander",
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "NeoTreeSignColumn",
        "NeoTreeStatusLine",
        "NeoTreeStatusLineNC",
        "NeoTreeVertSplit",
        "NeoTreeWinSeparator",
        "NeoTreeEndOfBuffer",
        "NeoTreeRootName",
        "NeoTreeSymbolicLinkTarget",
        "NeoTreeTitleBar",
        "NeoTreeWindowsHidden",
      },
      exclude_groups = {},
    },
  },

  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    lazy = true,
    version = "v3.*",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        mode = "buffers", -- set to "tabs" to only show tabpages instead
        numbers = "none", --"none" | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
        close_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
        right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
        left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
        middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        diagnostics = "false", -- false | "nvim_lsp" | "coc"
        diagnostics_update_in_insert = false,
        offsets = { { filetype = "NvimTree", text = "File Explorer", highlight = "Directory", text_align = "left" } },
        show_buffer_close_icons = true,
        show_close_icon = false,
        show_tab_indicators = true,
        persist_buffer_sort = false, -- whether or not custom sorted buffers should persist
        separator_style = "slant", -- "slant" | "thick" | "thin" | { 'any', 'any' }
        always_show_bufferline = true,
      },
    },
  },

  -- lualine
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      theme = "sonokai",
    },
  },

  -- Noice: replaces the UI for messages, cmdline and the popupmenu
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        bottom_search = false,
      },
      cmdline = {
        format = {
          search_up = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
          search_down = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
        },
      },
    },
  },

  -- nvim-notify
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },
}
